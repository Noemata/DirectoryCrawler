# Stage 2: File System Data Model

## Objective
Build the data layer capable of reading the macOS file system.

## Instructions
1. Create `FileSystemNode.swift`. This should be an `Identifiable` struct representing a file or folder, containing its name, URL, and an optional array of children (for folders).
2. Create `DirectoryScanner.swift`. Implement a class or actor that uses `FileManager` to read the contents of a given URL and return an array of `FileSystemNode` objects. Only read one level deep initially (lazy loading).
3. In the `Tests` folder, create `DirectoryScannerTests.swift`. Write an XCTest that validates the scanner can read the `/Users` directory and return nodes.

## Validation
Execute `xcodebuild test -scheme DirectoryCrawler -destination 'platform=macOS'`.

## Off-Ramp
Maximum 3 attempts. If the test fails or crashes on the 3rd attempt, STOP. Output the failure reason.