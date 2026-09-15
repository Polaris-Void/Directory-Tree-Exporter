<p align="right">
  <a href="README_FA.md"> <strong>فارسی</strong></a>
</p>

---

# Directory Tree & File Metadata Auditor

A fast, lightweight, and native Windows Batch & PowerShell hybrid utility designed to recursively scan directory structures, generate clean visual directory trees, and extract detailed file metadata into a formatted UTF-8 report.

It runs out-of-the-box without requiring external tools, third-party dependencies, or administrative privileges.

---

## ✨ Features

- **🌳 Visual Directory Hierarchy:** Maps folder contents using standard Unicode box-drawing characters (`├──`, `└──`, `│`) for clear structural visualization.
- **📊 Detailed Metadata Extraction:** Captures file sizes (formatted dynamically to B, KB, MB, or GB), exact modification dates, and creation dates.
- **📐 Dynamic Column Formatting:** Automatically calculates path lengths to keep table columns aligned and readable regardless of nested folder depth.
- **📈 Statistical Summary:** Provides an audit summary displaying total folders scanned, total files processed, aggregate size (both human-readable and raw bytes), and execution time using high-precision timers.
- **🌐 Full UTF-8 Encoding:** Accurately exports international filenames, Persian/Arabic characters, special symbols, and emojis without encoding corruption.
- **🛡️ Self-Excluding Log:** Automatically ignores its own log file (`File List Log.txt`) during scanning to prevent skewed audit numbers.
- **⚡ Zero Dependencies:** 100% native Windows script using Command Prompt and PowerShell.

---

## 📄 Output Preview

The generated `File List Log.txt` creates an organized tabular report similar to this:

```text
===================================================================================================
                                DIRECTORY TREE & FILE AUDIT REPORT                                 
===================================================================================================
  Target Path  :  C:\MyProject
  Generated On :  2026-09-15 16:00:00
===================================================================================================

  PATH / TREE STRUCTURE                   SIZE         DATE MODIFIED          DATE CREATED    
  ---------------------------------   ----------   -------------------   -------------------
  .                                       <DIR>    2026-09-15 15:30:10   2026-09-15 15:30:10
  ├── src/                                <DIR>    2026-09-15 15:45:22   2026-09-15 15:30:15
  │   ├── index.js                     12.45 KB    2026-09-15 15:44:00   2026-09-15 15:31:00
  │   └── utils.js                      4.10 KB    2026-09-15 15:40:12   2026-09-15 15:31:20
  └── README.md                         1.85 KB    2026-09-15 15:50:00   2026-09-15 15:30:10
  ---------------------------------   ----------   -------------------   -------------------

===================================================================================================
                                       STATISTICAL SUMMARY                                         
===================================================================================================
  Total Folders   :  1
  Total Files     :  3
  Total File Size :  18.40 KB (18,842 Bytes)
  Execution Time  :  0.24 Seconds
===================================================================================================
```

---

## 🚀 How to Use

1. Place the script file (saved with a `.bat` extension, e.g., `Export-File-List.bat`) inside the directory you want to audit.
2. **Double-click** the script to execute it.
3. The terminal will display real-time scan progress and terminal statistics.
4. A report file named **`File List Log.txt`** will be generated in the same directory.
5. The console window will automatically close after 5 seconds (or upon pressing any key).

---

## 💻 System Requirements

- **OS:** Windows 7, Windows 8.1, Windows 10, or Windows 11.
- **PowerShell:** Version 3.0 or later (installed by default on modern Windows).
- **Permissions:** Standard user privileges (Administrator access is **not** required unless scanning protected system folders).
