@echo off
call common.bat

:: Download 7zr.exe
call :download "https://www.7-zip.org/a/7zr.exe" "%DEPS_DIR%\7zr.exe"

:: Download PortableGit
call :download "https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.1/PortableGit-2.47.0-64-bit.7z.exe" "%DEPS_DIR%\PortableGit-2.47.0-64-bit.7z.exe"

:: Extract Git
call :extract "%DEPS_DIR%\PortableGit-2.47.0-64-bit.7z.exe" "%DEPS_DIR%\git"

:: Configure Git
call :configure_git

echo Process completed.
pause