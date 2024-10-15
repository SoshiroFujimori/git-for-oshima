@echo off
setlocal

:: Create deps folder
if not exist deps mkdir deps

:: Download 7zr.exe
echo Downloading: 7zr.exe
if not exist deps\7zr.exe (
    bitsadmin /transfer "7zrDownload" https://www.7-zip.org/a/7zr.exe %cd%\deps\7zr.exe
)

:: Download PortableGit-2.47.0-64-bit.7z.exe
echo Downloading: PortableGit-2.47.0-64-bit.7z.exe
if not exist deps\PortableGit-2.47.0-64-bit.7z.exe (
    bitsadmin /transfer "gitDownload" https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.1/PortableGit-2.47.0-64-bit.7z.exe %cd%\deps\PortableGit-2.47.0-64-bit.7z.exe
)

:: Extract Git to deps folder
echo Extracting Git...
cd deps
if not exist git (
7zr.exe x PortableGit-2.47.0-64-bit.7z.exe -o%cd%\git
)

:: Prompt user for name and email
set /p gitName="Please enter your GitHub username: "
set /p gitEmail="Please enter your GitHub email address: "

:: Configure Git
echo Configuring Git...
cd git/bin
git.exe config --global user.name "%gitName%"
git.exe config --global user.email "%gitEmail%"

echo Process completed.

endlocal
pause