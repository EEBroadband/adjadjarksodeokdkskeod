@echo off
color 0a ; Set the text color to green on black for visibility

:LOOP
set /a x=%random% %% 80 ; Random x-coordinate (0-79)
set /a y=%random% %% 25 ; Random y-coordinate (0-24)
cls ; Clear the screen
mode con: cols=80 lines=25 ; Ensure consistent screen size

; Move the cursor to the random position and display the message
echo.| set /p dummyName="Hello from a random location!" <nul
for /l %%i in (1,1,%y%) do echo.
echo %dummyName%

timeout /t 1 >nul ; Pause for 1 second
goto LOOP
