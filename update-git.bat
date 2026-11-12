@echo off
setlocal EnableDelayedExpansion

:: Enable ANSI escape colors in Windows command prompt
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do set "ESC=%%b"

set "CYAN=!ESC![96m"
set "WHITE=!ESC![97m"
set "GREEN=!ESC![92m"
set "YELLOW=!ESC![93m"
set "RED=!ESC![91m"
set "RESET=!ESC![0m"

echo %CYAN%=== 1. Checking current status ===%RESET%
git status
echo.

echo %CYAN%=== 2. Extracting timestamp from All-Channels.stats.json ===%RESET%
for /f "delims=" %%i in ('powershell -NoProfile -Command "$json = Get-Content 'All-Channels.stats.json' -Raw | ConvertFrom-Json; $date = [DateTime]::Parse($json.generatedAt); $date.ToString('dd-MMM-yyyy hh:mm:ss tt')"') do set "COMMIT_TIME=%%i"

if "%COMMIT_TIME%"=="" (
    echo %RED%Error: Could not extract 'generatedAt' from All-Channels.stats.json! Aborting.%RESET%
    goto :end
)

echo %GREEN%Successfully extracted timestamp:%RESET% %WHITE%%COMMIT_TIME%%RESET%
echo.

set "DEFAULT_MSG=Updated at %COMMIT_TIME%"

echo %CYAN%=== Preview of Default Git Commands ===%RESET%
echo %YELLOW%  git add -A%RESET%
echo %YELLOW%  git commit -m "%DEFAULT_MSG%"%RESET%
echo.

set "choice=n"
set /p "choice=%YELLOW%Do you want to proceed with commit and push? (y/N): %RESET%"

if /i "%choice%" neq "y" (
    echo %RED%Aborted by user.%RESET%
    goto :end
)

echo.
set "CUSTOM_MSG="
set /p "CUSTOM_MSG=%YELLOW%Enter custom commit message (Leave blank to use default): %RESET%"

:: If user typed a custom message, use it; otherwise fallback to default
if not "%CUSTOM_MSG%"=="" (
    set "FINAL_MSG=%CUSTOM_MSG%"
) else (
    set "FINAL_MSG=%DEFAULT_MSG%"
)

echo.
echo %CYAN%=== Final Preview ===%RESET%
echo %YELLOW%  git add -A%RESET%
echo %YELLOW%  git commit -m "%FINAL_MSG%"%RESET%
echo %YELLOW%  git push%RESET%
echo.

set "confirm=n"
set /p "confirm=%YELLOW%Proceed with these final commands? (y/N): %RESET%"

if /i "%confirm%" neq "y" (
    echo %RED%Aborted by user.%RESET%
    goto :end
)

echo.
echo %CYAN%=== 3. Staging and committing changes ===%RESET%
git add -A
git commit -m "%FINAL_MSG%"

echo.
echo %CYAN%=== 4. Pushing to remote ===%RESET%
git push

echo.
echo %CYAN%=== 5. Final status ===%RESET%
git status

:end
echo.
echo %WHITE%Press any key to exit . . .%RESET%
pause >nul