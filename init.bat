@echo off

:: Log start of script
echo Starting cleanup script...

:: Delete dep folder
echo Deleting dep folder...
if exist dep (
    rmdir /s /q dep
    echo dep folder deleted.
) else (
    echo dep folder does not exist.
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