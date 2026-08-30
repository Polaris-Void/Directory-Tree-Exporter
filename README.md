# Directory Tree Exporter

A lightweight, zero-dependency Windows Batch and PowerShell script that recursively generates a clean visual ASCII tree structure of any directory and exports it as a UTF-8 encoded text report.

## Features

- **UTF-8 Encoding Support:** Properly displays non-ASCII characters, Persian/Arabic file and folder names, and Unicode tree branch symbols without encoding corruption.
- **Visual Tree Structure:** Uses standard branch graphics (`├──`, `└──`) to render directory hierarchies.
- **Automated Summary:** Dynamically counts and reports the total number of directories and files.
- **Zero External Dependencies:** Built natively using Windows Command Prompt and PowerShell.
- **Portable:** Operates relative to its current directory path.

## Usage Instructions

1. Copy `Export File List.bat` into the folder you wish to inspect.
2. Execute `Export File List.bat` by double-clicking it.
3. Once completed, a log file named `File List Log.txt` will be generated in the same directory containing the formatted report.

## Sample Output

```text
===============================================================================
                      DIRECTORY TREE AND FILE STRUCTURE REPORT
===============================================================================
 Generated On : Sun 08/30/2026 10:00:00.00
 Target Path  : C:\Projects\Example\
===============================================================================

.
├── Documents
│   ├── Report.docx
│   └── Notes.txt
├── Images
│   └── Banner.png
└── README.md

2 directories, 4 files

===============================================================================
                              END OF FILE LIST REPORT
===============================================================================
