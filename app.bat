::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA5HSRa+GG6pDaET+NT67vqXnk4SWvEwdIqV07eBQA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIRGCs0
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWG2W9U81JBcUfwuEKHy7FLBczO3t6uaIskAYWvZf
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEwFAxJR5YQESxM22uEbQO7ajf6vyCrkINWecxbO8=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFA5HSRa+GG6pDaET+NT67vqXnmwtZKw6YIq7
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

cls

set APPNAME=APP v1.0

cls

REM Kill-List: Python?..
set KPYTHON="false"

cls

TITLE %APPNAME%

cls

START /B php -S localhost:8888 -t www
START /B http://localhost:8888

cls

echo Press [ENTER] to Close App Server..
pause > nul

cls

echo Exiting %APPNAME%..
echo.
timeout /t 3 > nul
taskkill /FI "imagename eq php.exe" > nul
taskkill /FI "windowtitle eq %APPNAME%" > nul
if %KPYTHON%=="true" taskkill /FI "imagename eq python.exe" > nul

cls

exit
