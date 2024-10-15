@echo off
call common.bat

:: Create the destination folder (repos)
if not exist repos mkdir repos

:: Prompt for the repository URL
set /p repoUrl="Please enter the Git repository URL to clone: "

:: Move to the repos folder
cd repos

:: Clone the repository
"%GIT_DIR%\git.exe" clone %repoUrl%

:: Display a message when cloning is complete
echo Repository clone completed.
pause