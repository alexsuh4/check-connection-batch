@echo off
set host=www.google.com
echo PLEASE WAIT ...
TITLE PLEASE WAIT ... 
:start
rem color 0f
rem ECHO CHECKING ...
ping %host% -w 1000 -n 1 >NUL
if errorlevel 0 goto success
goto fail
:success
CLS
color 0A
ECHO HAS CONNECTION
TITLE HAS CONNECTION
ECHO LAST CHECKED %DATE% %TIME%
ping 1.1.1.1 -w 500 -n 1 >NUL
goto start 

:fail
CLS
color 04
ECHO NO CONNECTION
TITLE NO CONNECTION
ECHO LAST CHECKED %DATE% %TIME%
ping 1.1.1.1 -w 500 -n 1 >NUL
goto start