import XCTest
@testable import DirectoryCrawler

final class DirectoryScannerTests: XCTestCase {
    func testScanUsersDirectory() throws {
        let scanner = DirectoryScanner()
        let usersUrl = URL(fileURLWithPath: "/Users")
        
        let nodes = try scanner.scan(url: usersUrl)
        
        XCTAssertFalse(nodes.isEmpty, "The /Users directory should not be empty")
        
        let sharedFolder = nodes.first { $0.name == "Shared" }
        XCTAssertNotNil(sharedFolder, "There should be a 'Shared' folder in /Users")
        XCTAssertNotNil(sharedFolder?.children, "The 'Shared' folder should be recognized as a directory (children != nil)")
    }
}