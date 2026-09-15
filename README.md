<p align="right">
  <a href="README.fa.md"> <strong>فارسی</strong></a>
</p>

---

# Directory Tree & File Metadata Auditor

A high-precision Windows Batch & PowerShell utility designed to scan folder structures, generate visual ASCII/Unicode directory trees, and extract detailed file metadata into a beautifully formatted UTF-8 text report.

---

## ✨ Features

- **🌳 Visual Directory Tree:** Recursively maps folder structures using clean box-drawing characters (`├──`, `└──`, `│`).
- **📊 Comprehensive Metadata:** Captures human-readable file sizes (Bytes, KB, MB, GB), exact Creation Timestamps, and Last Modified Timestamps.
- **📐 Dynamic Column Alignment:** Automatically measures the longest paths and file names to ensure table columns never misalign or break.
- **📈 Statistical Summary:** Calculates total folder counts, total file counts, cumulative data size (in both formatted units and exact bytes), and script execution time in seconds.
- **🌍 Full UTF-8 Encoding:** Native support for non-Latin characters (Persian, Arabic, CJK, etc.) without garbled text or corrupted symbols.
- **🛡️ Clean & Self-Excluding:** Automatically ignores its own output log file (`File List Log.txt`) during execution to avoid false records.
- **⚡ 100% Native:** Runs entirely on Windows built-in Batch and PowerShell environments without third-party dependencies.

---

## 📋 Sample Report Output

The generated `File List Log.txt` is formatted as follows:

```text
========================================================================================================
                                   DIRECTORY TREE & FILE AUDIT REPORT                                   
========================================================================================================
  Target Path  :  C:\MyProject\
  Generated On :  2026-09-15 16:00:00
========================================================================================================

  PATH / TREE STRUCTURE                   SIZE          DATE MODIFIED          DATE CREATED     
  ------------------------------------  ----------   -------------------    -------------------
  .                                         <DIR>    2026-09-15 14:12:00    2026-09-15 14:12:00
  ├── src/                                  <DIR>    2026-09-15 15:30:12    2026-09-15 14:15:30
  │   ├── app.js                          2.45 KB    2026-09-15 15:28:44    2026-09-15 14:20:00
  │   └── utils.js                        1.12 KB    2026-09-15 15:10:02    2026-09-15 14:22:15
  └── package.json                          480 B    2026-09-15 14:18:22    2026-09-15 14:18:22
  ------------------------------------  ----------   -------------------    -------------------

========================================================================================================
                                          STATISTICAL SUMMARY                                           
========================================================================================================
  Total Folders   :  1
  Total Files     :  3
  Total File Size :  4.05 KB (4,152 Bytes)
  Execution Time  :  0.28 Seconds
========================================================================================================
                                             END OF REPORT                                              
========================================================================================================
