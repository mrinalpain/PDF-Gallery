@echo off
echo Building PDF Gallery Android App...
echo.

REM Check if gradlew exists, if not create it
if not exist gradlew.bat (
    echo Creating Gradle Wrapper...
    gradle wrapper
)

echo Cleaning previous builds...
call gradlew clean

echo Building debug APK...
call gradlew assembleDebug

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo BUILD SUCCESSFUL!
    echo ========================================
    echo APK Location: app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo You can install this APK on your Android device.
    echo Make sure to enable "Install from unknown sources" in your device settings.
    echo.
) else (
    echo.
    echo ========================================
    echo BUILD FAILED!
    echo ========================================
    echo Please check the error messages above.
)

pause