@echo off
setlocal enabledelayedexpansion

:: Set copy destination directory
set destination=C:\

:check_drive
cls
echo Waiting for USB...

:: Scan all removable devices available
for /f "skip=1 tokens=1,2" %%a in ('wmic logicaldisk get drivetype^, deviceid') do (
    if "%%b"=="2" (
        set usb_drive=%%a
        :: Check if the drive contains files (avoid empty drives)
        if exist %%a\* (
            goto drive_found
        )
    )
)

:: If no valid USB are found, retry in 5s
timeout /t 5 /nobreak >nul
goto check_drive

:drive_found
echo USB Detected: !usb_drive!
echo Copy in progress...
xcopy /e /i /h /y !usb_drive!\ "%destination%\"

echo Copy completed.

::if you want to stop the script after the copy, add "pause" at the end
