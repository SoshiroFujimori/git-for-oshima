@echo off
setlocal

:: Common variables
set DEPS_DIR=deps
set GIT_DIR=%DEPS_DIR%\git\bin

:: Create deps folder if it doesn't exist
if not exist %DEPS_DIR% mkdir %DEPS_DIR%

:: Function to download a file if it doesn't exist
:download
if not exist %2 (
    echo Downloading: %1
    bitsadmin /transfer "download" %1 %2
)
goto :eof

:: Function to extract a file
:extract
echo Extracting %1...
7zr.exe x %1 -o%2
goto :eof

:: Function to configure Git
:configure_git
set /p gitName="Please enter your GitHub username: "
set /p gitEmail="Please enter your GitHub email address: "
%GIT_DIR%\git.exe config --global user.name "%gitName%"
%GIT_DIR%\git.exe config --global user.email "%gitEmail%"
goto :eof

endlocal