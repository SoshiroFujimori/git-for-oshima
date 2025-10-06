@echo off
setlocal

:: Move to the repos folder
cd repos

:: Traverse all subfolders and execute sync
for /d %%d in (*) do (
    echo Moving to repository %%d...
    cd %%d
    if exist .git (
        echo Syncing main repository %%d...
        "../../deps/git/bin/git.exe" pull --rebase
        "../../deps/git/bin/git.exe" submodule update --init --recursive

        echo.
        echo Syncing submodules for %%d...
        "../../deps/git/bin/git.exe" submodule foreach "git add . && (git commit -m \"Automatic sync from sync.bat\" || echo \"No changes to commit in submodule\") && git pull --rebase && git push"
        
        echo.
        echo Committing submodule updates in %%d...
        "../../deps/git/bin/git.exe" add .
        (git commit -m "Update submodules" && git push) || echo "No submodule updates to commit in main repo."

    ) else (
        echo %%d is not a Git repository.
    )
    cd ..
)

echo All repositories and submodules have been synced.

endlocal
pause
