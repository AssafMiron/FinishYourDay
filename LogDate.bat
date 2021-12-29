echo off
REM Log closing date and time
set logPath="D:\temp\myWorkingHours.csv"
REM Date format: YYYY-MM-DD (might change for different OS locales)
set dateformat=%date:~-4%-%date:~4,2%-%date:~7,2%
@REM Time with seconds
@REM set timeformat=%time:~0,2%:%time:~3,2%:%time:~6,2%
set timeformat=%time:~0,2%:%time:~3,2%
REM Assuming CSV file headers are: Date, Time, Action (Start/End)
echo %dateformat%,%timeformat%,END >> %logPath%