echo off
ECHO Hybrid shutdown in 20 Seconds
REM Performs a shutdown of the computer and prepares it for fast startup
REM Leaving 20 seconds to change your mind...
timeout /t 20 /NOBREAK > NUL && shutdown /s /d p:0:0 /hybrid