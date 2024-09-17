@echo off
setlocal enabledelayedexpansion

:: Imposta la directory di destinazione per la copia
set destination=C:\

:check_drive
cls
echo In attesa dell'inserimento di una chiavetta USB...

:: Controlla tutte le unità rimovibili disponibili
for /f "skip=1 tokens=1,2" %%a in ('wmic logicaldisk get drivetype^, deviceid') do (
    if "%%b"=="2" (
        set usb_drive=%%a
        :: Verifica se l'unità contiene dei file (evita lettori vuoti)
        if exist %%a\* (
            goto drive_found
        )
    )
)

:: Se non trova nessuna unità USB valida, riprova
timeout /t 5 /nobreak >nul
goto check_drive

:drive_found
echo Unità USB rilevata: !usb_drive!
echo Copio i file dalla chiavetta USB...
xcopy /e /i /h /y !usb_drive!\ "%destination%\"

echo Copia completata.
pause
