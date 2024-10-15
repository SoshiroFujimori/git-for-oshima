@echo off
setlocal

:: Move to the repos folder
cd repos

:: Traverse all subfolders and execute push
for /d %%d in (*) do (
    echo Moving to repository %%d...
    cd %%d
    if exist .git (
        echo Syncing repository %%d...
        "../../deps/git/bin/git.exe" add .
        "../../deps/git/bin/git.exe" commit -m "Automatic sync from sync.bat"
        "../../deps/git/bin/git.exe" pull --rebase
        "../../deps/git/bin/git.exe" push
    ) else (
        echo %%d is not a Git repository.
    )
    cd ..
)

echo All repositories have been synced.

endlocal
pause
