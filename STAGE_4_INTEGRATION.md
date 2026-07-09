# Stage 4: Polish & Execution

## Objective
Ensure the app runs and the UI successfully interacts with the data model.

## Instructions
1. Review the connection between the UI state and the `DirectoryScanner`. Ensure that clicking a folder in the `OutlineGroup` successfully loads its children using the lazy loading logic.
2. Verify all files are correctly referenced in the Xcode project via the MCP `XcodeLS` tool.
3. Build the final application.

## Validation & Completion
If the build succeeds, output the terminal command required to launch the compiled `DirectoryCrawler.app` from the derived data folder so the user can test the UI manually. 

## Off-Ramp
If the build fails, STOP.