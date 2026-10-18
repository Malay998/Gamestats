@echo off
title GameStats - Performance Intelligence
cd /d "%~dp0"
echo.
echo  ===========================================
echo      GAMESTATS - PERFORMANCE INTELLIGENCE
echo  ===========================================
echo.
where py >nul 2>nul
if errorlevel 1 (
    echo Python was not found. Install Python 3.10+ and select "Add Python to PATH".
    pause
    exit /b 1
)
if not exist ".venv\Scripts\python.exe" (
    echo Creating the local Python environment...
    py -m venv .venv
    if errorlevel 1 (
        echo Could not create the Python environment.
        pause
        exit /b 1
    )
)
echo Installing/updating required libraries...
".venv\Scripts\python.exe" -m pip install --upgrade pip
".venv\Scripts\python.exe" -m pip install -r requirements.txt
if errorlevel 1 (
    echo Library installation failed. Check your internet connection and Python setup.
    pause
    exit /b 1
)
echo Starting GameStats...
".venv\Scripts\python.exe" -m streamlit run app.py
pause
