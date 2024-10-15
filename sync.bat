@echo off
call common.bat

:: Move to the repos folder
cd repos

:: Traverse all subfolders and execute push
for /d %%d in (*) do (
    echo Moving to repository %%d...
    cd %%d
    if exist .git (
        echo Syncing repository %%d...
        "%GIT_DIR%\git.exe" add .
        "%GIT_DIR%\git.exe" commit -m "Automatic sync from sync.bat"
        "%GIT_DIR%\git.exe" pull --rebase
        "%GIT_DIR%\git.exe" push
    ) else (
        echo %%d is not a Git repository.
    )
    cd ..
)

echo All repositories have been synced.
pause