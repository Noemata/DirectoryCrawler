# No Hands (programming)

The entire solution was created using an agentic approach.  Once the "Factory Floor" was in place by creating these files: .mcp.com, project.yml, place holder files in the Sources and Tests folder, and the addition of STAGE 1->5 prompts at the root of the project, the rest of the development process was handled by the AI agent after executing Xcodegen to create the starting ("Factory Floor") solution elements. This "No Hands" section was added by a human at the very end of the process.

# DirectoryCrawler

DirectoryCrawler is a native macOS application that allows users to navigate and explore their file system. Built with SwiftUI, it features a classic NavigationSplitView with standard macOS volumes on the left sidebar and a dynamically loaded, recursive file hierarchy detail view on the right pane.

## Building the Project

This project uses [XcodeGen](https://github.com/yonaskolb/XcodeGen) to manage the Xcode project structure. To build and run the application:

1. Make sure you have `xcodegen` installed (e.g., `brew install xcodegen`).
2. Run `xcodegen generate` in the root directory to generate the `DirectoryCrawler.xcodeproj`.
3. Open the generated `.xcodeproj` in Xcode or build via the command line:
   ```bash
   xcodebuild build -scheme DirectoryCrawler -destination 'platform=macOS'
   ```

## The "Agentic Factory" Development Process

This application was constructed using an "Agentic Factory" methodology. The development process was broken down into five distinct, sequential stages, executed autonomously by the GitHub Copilot CLI connected to the Xcode 26.6 MCP bridge:

1. **Stage 1: App Scaffolding** - Generation of the foundational SwiftUI app structure and Xcode project using XcodeGen, complete with Sandbox entitlements.
2. **Stage 2: File System Data Model** - Construction of a lazy-loading data layer using `FileManager` and unit test validation.
3. **Stage 3: Split View Navigation** - Building the main macOS standard `NavigationSplitView` interface and connecting it to the file scanner.
4. **Stage 4: Integration & Polish** - Creating recursive, lazy-loading UI components (`DisclosureGroup`) for true file system tree exploration, and finalizing the build.
5. **Stage 5: Documentation & Version Control** - Generating this documentation, setting up `.gitignore`, and publishing to GitHub.
