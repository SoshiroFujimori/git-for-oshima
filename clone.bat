@echo off
setlocal

:: Create the destination folder (repos)
if not exist repos mkdir repos

:: Prompt for the repository URL
set /p repoUrl="Please enter the Git repository URL to clone: "

:: Move to the repos folder
cd repos

:: Clone the repository
"../deps/git/bin/git.exe" clone %repoUrl%

:: Display a message when cloning is complete
echo Repository clone completed.

endlocal
pause