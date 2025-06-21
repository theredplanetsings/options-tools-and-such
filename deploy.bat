@echo off
echo Options Dashboard Deployment Helper
echo ======================================

:: Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed. Please install Git first.
    pause
    exit /b 1
)

:: Initialize git repository if not already done
if not exist ".git" (
    echo Initializing Git repository...
    git init
    git add .
    git commit -m "Initial commit: Options Dashboard"
)

echo.
echo Choose your deployment platform:
echo 1^) Streamlit Community Cloud ^(Recommended - Free^)
echo 2^) Heroku
echo 3^) Railway
echo.

set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" (
    echo.
    echo Streamlit Community Cloud Deployment
    echo ======================================
    echo 1. Push this code to GitHub:
    echo    - Create a new repository on GitHub
    echo    - Run: git remote add origin https://github.com/yourusername/your-repo.git
    echo    - Run: git push -u origin main
    echo.
    echo 2. Visit: https://share.streamlit.io
    echo 3. Connect your GitHub account
    echo 4. Select your repository and 'app.py'
    echo 5. Your app will be live in minutes!
) else if "%choice%"=="2" (
    echo.
    echo Heroku Deployment
    echo ===================
    heroku --version >nul 2>&1
    if %errorlevel% neq 0 (
        echo Heroku CLI not found. Install from: https://devcenter.heroku.com/articles/heroku-cli
        pause
        exit /b 1
    )
    
    set /p app_name="Enter your app name: "
    
    echo Creating Heroku app...
    heroku create %app_name%
    
    echo Deploying to Heroku...
    git push heroku main
    
    echo App deployed! Visit: https://%app_name%.herokuapp.com
) else if "%choice%"=="3" (
    echo.
    echo Railway Deployment
    echo ====================
    echo 1. Visit: https://railway.app
    echo 2. Connect your GitHub account
    echo 3. Import this repository
    echo 4. Railway will auto-deploy your app!
) else (
    echo Invalid choice. Please run the script again.
)

pause
