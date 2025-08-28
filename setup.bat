@echo off
echo PDF Gallery Android App Setup
echo =============================
echo.

echo Checking requirements...

REM Check if Java is installed
java -version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Java is not installed or not in PATH
    echo Please install Java 8 or higher and add it to your PATH
    echo Download from: https://adoptium.net/
    pause
    exit /b 1
)

echo ✓ Java is installed

REM Check if Android SDK is available (optional)
if defined ANDROID_HOME (
    echo ✓ Android SDK found at: %ANDROID_HOME%
) else (
    echo ! Android SDK not found (ANDROID_HOME not set)
    echo   This is optional if you have Android Studio installed
)

echo.
echo Setup complete! You can now build the app using:
echo   1. Run build.bat to build the APK
echo   2. Or open the project in Android Studio
echo.

echo Project Structure:
echo   📁 app/                 - Main application code
echo   📁 app/src/main/java/   - Kotlin source files
echo   📁 app/src/main/res/    - Android resources
echo   📄 build.bat           - Build script
echo   📄 README.md           - Documentation
echo.

pause