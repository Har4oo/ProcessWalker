@echo off
setlocal enabledelayedexpansion

set "logfile=log.txt"

:MENU
echo 1. Log all running processes
echo 2. Log a specific process (e.g., notepad.exe)
echo 3. Exit
set /p choice=Enter your choice (1, 2, or 3): 

if "%choice%"=="1" goto LOG_ALL
if "%choice%"=="2" goto LOG_SPECIFIC
if "%choice%"=="3" exit
goto MENU

:LOG_ALL
echo Logging ALL processes to %logfile%...
(
echo Log Time: %date% %time%
echo Process Name - PID - Session Name - Session Number
for /f "tokens=1,2,3,4 delims=," %%A in ('"tasklist /fo csv /nh"') do (
    echo %%A - %%B - %%C - %%D
)
echo.
) >> "%logfile%"

echo Done! Log saved to %logfile%
pause
goto MENU

:LOG_SPECIFIC
set /p procname=Enter the process name (notepad.exe): 
(
echo Log Time: %date% %time%
echo Looking for: %procname%
echo Process Name - PID - Session Name - Session Number
tasklist /fi "imagename eq notepad.exe" | findstr /i "notepad.exe" >nul
if errorlevel 1 (
    echo %procname% IS NOT RUNNING.
) else (
    echo %procname% is running.
)
for /f "tokens=1,2,3,4 delims=," %%A in ('"tasklist /fo csv /nh"') do (
    set "pname=%%~A"
    if /i "!pname!"=="%procname%" echo %%~A - %%B - %%C - %%D
)
echo.
) >> "%logfile%"

echo Logged to %logfile%
pause
goto MENU