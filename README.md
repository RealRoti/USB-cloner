# USB Cloner

This project contains a batch script that automatically detects a USB drive and copies its content to a local folder without requiring user interaction. The program can also be run in the background with no visible interface.

## Features
- No admin permission required
- Automatically detects and copies files from an inserted USB drive.
- Automatically ignores USB drives connected that don't contain files (such as mouse, keyboard..)
- Runs silently in the background using a VBScript.

## Installation

1. Clone or download this repository.
2. Edit `script.bat` to customize the destination folder for copying USB content.
3. (Optional) To run the script silently, use `launcher.vbs`:
   - Edit `launcher.vbs` and replace the path with the location of your `script.bat` file.

## Usage

### Running with visible interface:
Simply double-click `script.bat`. The script will wait for a USB drive and copy its contents to the specified local folder.

### Running in the background (hidden):
1. Double-click `launcher.vbs` to run the batch script without a visible interface.
2. The script will continue to monitor for USB drives in the background and copy their content silently.

## Customization

- You can change the target folder for copying USB content by editing the `destination` variable in `script.bat`.
- If needed, modify the timeout interval or other parameters inside the script for your specific use case.

## Dislcaimer
This software is provided "as-is" without any warranty of any kind. The use of this program is at your own risk. The author is not responsible for any data loss, unauthorized copying, or misuse of the script. Ensure you have proper permissions to copy files from any USB drive before using this tool.
