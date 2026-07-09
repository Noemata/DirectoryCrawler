# Stage 1: App Scaffolding

## Objective
Generate the foundational SwiftUI app structure and Xcode project.

## Instructions
1. Create `DirectoryCrawler.entitlements` in the root folder. Add the `com.apple.security.app-sandbox` key set to `YES` and `com.apple.security.files.user-selected.read-only` set to `YES`.
2. In the `Sources` folder, create `DirectoryCrawlerApp.swift` containing the `@main` App struct.
3. Create a placeholder `ContentView.swift` containing a simple "Hello World" text view.
4. Run `xcodegen generate` to build the `.xcodeproj` file.

## Validation
Execute `xcodebuild build -scheme DirectoryCrawler -destination 'platform=macOS'`. 

## Off-Ramp
Maximum 3 attempts. If the build fails on the 3rd attempt, STOP. Do not proceed. Output the build log and wait for user intervention.