@Echo off
REM Branding Universal Alienware c drive os icon Setting Area: =============
REM Copy Files:
if not exist "C:\Dell\alienware\image" mkdir "C:\Dell\alienware\image"
xcopy "%~dp0image" "C:\Dell\alienware\image" /e /i /h /y
REM C Drive Autorun for Drive Icon:
if not exist "C:\autorun.inf" copy "%~dp0autorun.inf" "C:\"
if not exist "C:\alienware.ico" copy "%~dp0alienware.ico" "C:\"
REM Hide Autorun File:
attrib +h +r "C:\autorun.inf"
attrib +h +r "C:\alienware.ico"

REM Desktop Icon Enable Command:
REG IMPORT "%~dp0reg\Desktop_Icon_Enable.reg"

REM Changing This Computer Name Check Current Name:
hostname
REMChanging This Computer Name:
call powershell.exe Rename-COMPUTER "DEVPCA"


REM Personal Setting Area: ==============
REM Clear Command By Md Omman
if not exist "C:\Dell\alienware\Clear.bat" copy "%~dp0Clear.bat" "C:\Dell\alienware\Clear.bat"
if not exist "C:\Users\Public\Desktop\Clear.lnk" copy "%~dp0shortcut\Clear.lnk" "C:\Users\Public\Desktop"


REM Display Setting / Power & Sleep 
REM =======================================================

REM Change Turn Off Display After Time in Command by Omman
REM ========================================================================================================================
REM (On battery) Command:
REM ========================================================================================================================
REM powercfg /SETDCVALUEINDEX SCHEME_CURRENT 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e Seconds
REM ========================================================================================================================
REM (Plugged in) Command:
REM ========================================================================================================================
REM powercfg /SETACVALUEINDEX SCHEME_CURRENT 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e Seconds
REM ========================================================================================================================
REM Substitute Seconds in the commands above with how many seconds you want to turn off display after. 
REM Using 60 for 1 Miniute For 60 seconds & Using 0 (zero) seconds will be the same as "Never".
REM ========================================================================================================================
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
powercfg /SETACVALUEINDEX SCHEME_CURRENT 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0
REM ========================================================================================================================

REM Change Sleep After Time in Command by Omman
REM ========================================================================================================================
REM (On battery) Command:
REM ========================================================================================================================
REM powercfg /SETDCVALUEINDEX SCHEME_CURRENT 238C9FA8-0AAD-41ED-83F4-97BE242C8F20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da Seconds
REM ========================================================================================================================
REM (Plugged in) Command:
REM ========================================================================================================================
REM powercfg /SETACVALUEINDEX SCHEME_CURRENT 238C9FA8-0AAD-41ED-83F4-97BE242C8F20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da Seconds
REM ========================================================================================================================
REM Substitute Seconds in the commands above with how many seconds you want to turn off display after. 
REM Using 60 for 1 Miniute For 60 seconds & Using 0 (zero) seconds will be the same as "Never".
REM ========================================================================================================================
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 238C9FA8-0AAD-41ED-83F4-97BE242C8F20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
powercfg /SETACVALUEINDEX SCHEME_CURRENT 238C9FA8-0AAD-41ED-83F4-97BE242C8F20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0
REM ========================================================================================================================


REM  Display Setting / Power & Sleep / Additional Setting
REM =======================================================

REM Power Button Action in Windows 10 Command By Omman
REM ========================================================================================================================
REM (On battery) Command:
REM ========================================================================================================================
REM powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 Index
REM ========================================================================================================================
REM (Plugged in) Command:
REM powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 Index
REM ========================================================================================================================
REM Index Number	Action
REM 0				Do nothing
REM 1				Sleep
REM 2				Hibernate
REM 3				Shut down
REM 4				Turn off the display
REM ========================================================================================================================
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 3
REM ========================================================================================================================


REM When I Press Sleep Button Action in Windows 10 Command By Omman
REM ========================================================================================================================
REM (On battery) Command:
REM ========================================================================================================================
REM powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb Index
REM ========================================================================================================================
REM (Plugged in) Command:
REM powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb Index
REM ========================================================================================================================
REM Index Number	Action
REM 0		Do nothing
REM 1		Sleep
REM 2		Hibernate
REM 3		Shut down
REM ========================================================================================================================
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 1
powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 96996bc0-ad50-47ec-923b-6f41874dd9eb 1
REM ========================================================================================================================

REM Closing Lid in Windows 10 Command By Omman
REM ========================================================================================================================
REM (On battery) Command:
REM ========================================================================================================================
REM powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 Index
REM ========================================================================================================================
REM (Plugged in) Command:
REM powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 Index
REM ========================================================================================================================
REM Index Number	Action
REM 0		Do nothing
REM 1		Sleep
REM 2		Hibernate
REM 3		Shut down
REM ========================================================================================================================
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
REM ========================================================================================================================

REM Exit This Command
exit






