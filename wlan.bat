@echo off

:: Find the drive letter of the USB drive
setlocal enabledelayedexpansion
for /F "usebackq delims=" %%A in (`wmic logicaldisk where "drivetype=2" get deviceid^, volumename 2^>nul`) do (
    set "Drive=%%A"
    setlocal enabledelayedexpansion
    if defined Drive (
        set "Drive=!Drive:~0,2!"
        set "USBDrive=!Drive!"
        goto :CreateFolder
    )
    endlocal
)

echo USB drive not found.
pause
exit

:CreateFolder
echo Creating export folder on USB drive...
mkdir "%UsbDrive%\Exports"

echo Exporting Wi-Fi profiles to the USB drive...
start "" cmd /c "netsh wlan export profile folder="%UsbDrive%\New_F" key=clear & exit"