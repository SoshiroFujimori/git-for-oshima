@echo off
call common.bat

:: Log start of script
echo Starting cleanup script...

:: Delete deps folder
echo Deleting deps folder...
if exist %DEPS_DIR% (
    rmdir /s /q %DEPS_DIR%
    echo deps folder deleted.
) else (
    echo deps folder does not exist.
)

:: Delete repos folder
echo Deleting repos folder...
if exist repos (
    rmdir /s /q repos
    echo repos folder deleted.
) else (
    echo repos folder does not exist.
)

:: Log end of script
echo Cleanup script completed.
pause