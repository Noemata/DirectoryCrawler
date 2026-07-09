# Stage 3: Split View Navigation

## Objective
Build the macOS standard `NavigationSplitView`.

## Instructions
1. Modify `ContentView.swift` to use a `NavigationSplitView`. 
2. The left sidebar (Volumes) should contain a hardcoded list of standard macOS volume paths (e.g., `/`, `/System/Volumes/Data`).
3. The detail view (Right Pane) should display an `OutlineGroup` or `List(..., children: \.children)` bound to the `FileSystemNode` data model created in Stage 2.
4. Connect the user's sidebar selection to the `DirectoryScanner` to populate the detail view.

## Validation
Execute `xcodebuild build -scheme DirectoryCrawler -destination 'platform=macOS'`. 

## Off-Ramp
Maximum 3 attempts. If SwiftUI syntax errors prevent compilation, STOP.