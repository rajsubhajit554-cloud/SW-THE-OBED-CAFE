@echo off
echo =========================================
echo       GIT AUTO-UPDATE SCRIPT
echo =========================================
echo.

:: Prompt for commit message
set /p commit_msg="Enter commit message (press Enter for 'Update website'): "
if "%commit_msg%"=="" set commit_msg=Update website

echo.
echo [1/3] Adding changes...
git add .

echo.
echo [2/3] Committing changes...
git commit -m "%commit_msg%"

echo.
echo [3/3] Pushing to GitHub...
git push origin main

echo.
echo =========================================
echo Git Update Process Completed!
echo =========================================
pause
