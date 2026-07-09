import SwiftUI

struct FileNodeView: View {
    let node: FileSystemNode
    let scanner: DirectoryScanner
    @State private var isExpanded = false
    @State private var loadedChildren: [FileSystemNode]?

    var body: some View {
        if node.children != nil {
            DisclosureGroup(isExpanded: $isExpanded) {
                if let loadedChildren = loadedChildren {
                    ForEach(loadedChildren) { child in
                        FileNodeView(node: child, scanner: scanner)
                    }
                } else if isExpanded {
                    ProgressView()
                }
            } label: {
                Label(node.name, systemImage: "folder")
            }
            .onChange(of: isExpanded) { newValue in
                if newValue && loadedChildren == nil {
                    DispatchQueue.global(qos: .userInitiated).async {
                        let results = try? scanner.scan(url: node.url)
                        DispatchQueue.main.async {
                            self.loadedChildren = results ?? []
                        }
                    }
                }
            }
        } else {
            Label(node.name, systemImage: "doc")
        }
    }
}

struct ContentView: View {
    let volumes: [URL] = [
        URL(fileURLWithPath: "/"),
        URL(fileURLWithPath: "/System/Volumes/Data"),
        URL(fileURLWithPath: "/Users")
    ]
    
    @State private var selectedVolume: URL?
    @State private var nodes: [FileSystemNode] = []
    let scanner = DirectoryScanner()
    
    var body: some View {
        NavigationSplitView {
            List(volumes, id: \.self, selection: $selectedVolume) { volume in
                Text(volume.path)
            }
            .navigationTitle("Volumes")
        } detail: {
            if selectedVolume != nil {
                List(nodes) { node in
                    FileNodeView(node: node, scanner: scanner)
                }
                .navigationTitle(selectedVolume?.lastPathComponent ?? "Directory")
            } else {
                Text("Select a volume")
                    .foregroundColor(.secondary)
            }
        }
        .onChange(of: selectedVolume) { newValue in
            if let url = newValue {
                do {
                    nodes = try scanner.scan(url: url)
                } catch {
                    print("Error scanning \(url): \(error)")
                    nodes = []
                }
            } else {
                nodes = []
            }
        }
    }
}