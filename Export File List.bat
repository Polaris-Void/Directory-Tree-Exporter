@echo off
chcp 65001 > nul
set "LOGFILE=%~dp0File List Log.txt"
set "TARGET_DIR=%~dp0"

echo Generating directory tree report...

(
echo ===============================================================================
echo                      DIRECTORY TREE AND FILE STRUCTURE REPORT
echo ===============================================================================
echo  Generated On : %date% %time%
echo  Target Path  : %~dp0
echo ===============================================================================
echo.
) > "%LOGFILE%"

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "[Console]::OutputEncoding = [System.Text.Encoding]::UTF8; " ^
    "$global:d = 0; $global:f = 0; " ^
    "function Draw-Tree($dir, $prefix='') { " ^
    "    $items = Get-ChildItem -LiteralPath $dir -ErrorAction SilentlyContinue; " ^
    "    $count = $items.Count; " ^
    "    for ($i=0; $i -lt $count; $i++) { " ^
    "        $item = $items[$i]; " ^
    "        if ($item.PSIsContainer) { $global:d++ } else { $global:f++ } " ^
    "        $isLast = ($i -eq ($count - 1)); " ^
    "        $branch = if ($isLast) { '└── ' } else { '├── ' }; " ^
    "        $nextPrefix = if ($isLast) { $prefix + '    ' } else { $prefix + '│   ' }; " ^
    "        Write-Output ($prefix + $branch + $item.Name); " ^
    "        if ($item.PSIsContainer) { Draw-Tree $item.FullName $nextPrefix } " ^
    "    } " ^
    "}; " ^
    "Write-Output '.'; " ^
    "Draw-Tree $env:TARGET_DIR; " ^
    "Write-Output ''; " ^
    "Write-Output ('{0} directories, {1} files' -f $global:d, $global:f);" >> "%LOGFILE%"

(
echo.
echo ===============================================================================
echo                             END OF FILE LIST REPORT
echo ===============================================================================
) >> "%LOGFILE%"

echo Process completed successfully.
echo Closing in 5 seconds (or press any key)...
timeout /t 5