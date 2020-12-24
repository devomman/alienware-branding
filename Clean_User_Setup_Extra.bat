@Echo off

REM =======================================Extra For Clean Windows User================================

REM Branding Setting Area: ==============
REM Change C Driver Name:
label C:OS

REM Branding Registry Setting Area: ==============
REM For Default Icon
REM REG IMPORT "%~dp0reg\Desktop_Icon_Default.reg"

REM OEM Information for Branding:
REG IMPORT "%~dp0reg\OEMInformation.reg"

REM Desktop Walpaper Enable Command:
if not exist "C:\Dell\alienware\image\alienware_dark.jpg" copy "%~dp0image\alienware_dark.jpg" "C:\Dell\alienware\image\alienware_dark.jpg"
REG IMPORT "%~dp0reg\Walpaper.reg"

rem Automatically pick a color from my background for Registry Import File..
rem [HKEY_CURRENT_USER\Control Panel\Desktop]
rem ; dword:00000000 to Disable
rem ; dword:00000001 to Enable
rem ;"AutoColorization"=dword:00000000
rem "AutoColorization"=dword:00000001

rem Automatically pick a color from my background for Command Line Use:
REG ADD "HKCU\Control Panel\Desktop" /v "AutoColorization" /t "REG_DWORD" /d "00000001" /f
rem or 
rem REG ADD "HKCU\Control Panel\Desktop" /v "AutoColorization" /t "REG_DWORD" /d "00000000" /f

REM Exit This Command
exit