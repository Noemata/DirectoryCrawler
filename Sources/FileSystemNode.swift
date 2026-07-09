import Foundation

public struct FileSystemNode: Identifiable, Equatable {
    public let id: URL
    public let name: String
    public let url: URL
    public var children: [FileSystemNode]?
    
    public init(url: URL, children: [FileSystemNode]? = nil) {
        self.id = url
        self.name = url.lastPathComponent
        self.url = url
        self.children = children
    }
}