# 📂 Directory Tree & File Metadata Auditor

A fast, lightweight, and zero-dependency Windows utility that generates a clean, structured directory tree along with detailed file metadata (**Size**, **Date Modified**, and **Date Created**) in a tabular, human-readable format.

![Platform](https://img.shields.io/badge/Platform-Windows-0078D6?logo=windows&logoColor=white)
![Shell](https://img.shields.io/badge/Language-Batch%20%7C%20PowerShell-5391FE?logo=powershell&logoColor=white)
![Encoding](https://img.shields.io/badge/Encoding-UTF--8%20with%20BOM-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

---

## ✨ Key Features

- **🚀 Zero Dependencies:** Works natively on Windows (10 / 11 / Server) without installing Python, Node.js, or external CLI tools.
- **📊 Detailed File Metadata:** Exports complete information for every file and folder:
  - **Path & Structure:** Visual tree hierarchy (`├──`, `└──`, `│`).
  - **Size:** Human-readable sizes (`B`, `KB`, `MB`, `GB`) with `<DIR>` badges for folders.
  - **Date Modified:** Exact timestamp (`YYYY-MM-DD HH:mm:ss`).
  - **Date Created:** Original creation timestamp (`YYYY-MM-DD HH:mm:ss`).
- **🪟 Windows 11 Notepad Compatible:** Built with an **Open Columnar Layout** to eliminate rendering glitches, character-width discrepancies, and word-wrap issues caused by the Windows 11 Notepad DirectWrite engine.
- **💾 Root Drive & Path Safe:** Full support for scanning root drives (`C:\`, `D:\`) as well as deeply nested folders with special characters.
- **🌐 UTF-8 with BOM Encoding:** Native support for non-ASCII, Persian, Arabic, and international file and folder names.
- **🎨 Modern CLI Terminal:** Beautiful console feedback with live scanning counters, elapsed time, total size computation, and styled Unicode box banners.

---

## 🖥️ Console Preview

When executed, the console displays a real-time summary:

```text
   ╔════════════════════════════════════════════════════════════════════════╗
   ║                DIRECTORY AUDITOR & FILE STRUCTURE TREE                 ║
   ║                  High-Precision File Metadata Report                   ║
   ╚════════════════════════════════════════════════════════════════════════╝

    Target Path  :  D:\Projects\MyApp
    Output File  :  D:\Projects\MyApp\File List Log.txt

   ──────────────────────────────────────────────────────────────────────────
    STATUS       :  Scanning directory structure and extracting metadata...
   ──────────────────────────────────────────────────────────────────────────

   ──────────────────────────────────────────────────────────────────────────
    ✔ SCAN COMPLETED SUCCESSFULLY
   ──────────────────────────────────────────────────────────────────────────

    Folders Scanned :  772
    Files Processed :  4,850
    Total Data Size :  12.45 GB (13,368,140,512 Bytes)
    Execution Time  :  1.82 Seconds

   ══════════════════════════════════════════════════════════════════════════
    ✔ Exported To   : File List Log.txt
   ══════════════════════════════════════════════════════════════════════════
