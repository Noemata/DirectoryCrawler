import Foundation

public class DirectoryScanner {
    public init() {}
    
    public func scan(url: URL) throws -> [FileSystemNode] {
        let fileManager = FileManager.default
        let contents = try fileManager.contentsOfDirectory(
            at: url,
            includingPropertiesForKeys: [.isDirectoryKey],
            options: [.skipsHiddenFiles]
        )
        
        return contents.map { itemUrl in
            var isDir: ObjCBool = false
            fileManager.fileExists(atPath: itemUrl.path, isDirectory: &isDir)
            
            if isDir.boolValue {
                return FileSystemNode(url: itemUrl, children: [])
            } else {
                return FileSystemNode(url: itemUrl, children: nil)
            }
        }
    }
}