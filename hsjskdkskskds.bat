@echo off
title Message Looper

:config
set /p msg=Enter message to loop:
set /p reps=How many times to repeat:
set /p x=Start X coordinate:
set /p y=Start Y coordinate:
set /p dx=Change in X per loop:
set /p dy=Change in Y per loop:

:loop
for /l %%i in (1, 1, %reps%) do (
  cls 
  echo %msg% | %windir%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms;[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(%x%,%y%)" 
  set /a x+=dx
  set /a y+=dy
  timeout 1 >nul  
)
goto config
