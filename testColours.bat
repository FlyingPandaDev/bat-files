@echo off
call :ColorText "This is a red message" "Red"
call :ColorText "This is a green message" "Green"
call :ColorText "This is a yellow message" "Yellow"
call :ColorText "This is a blue message" "Blue"
call :ColorText "This is a magenta message" "Magenta"
call :ColorText "This is a cyan message" "Cyan"
call :ColorText "This is a white message" "White"
pause
exit /b

:ColorText
set "text=%~1"
set "color=%~2"
powershell -Command "& {$color='%color%'; $text='%text%'; Write-Host $text -ForegroundColor $color}"
exit /b

