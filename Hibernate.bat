echo off
REM Disconnect Checkpoint VPN
REM "C:\Program Files (x86)\CheckPoint\Endpoint Connect\trac.exe" disconnect
REM Disconnect Pulse VPN
"C:\Program Files (x86)\Common Files\Pulse Secure\Integration\pulselauncher.exe" -signout -url https://ilvpn.cyberark.com/cyberark
REM Close Running VM Machines
FOR /F "skip=1 tokens=*" %%a IN ('"C:\Program Files (x86)\VMware\VMware Workstation\VMRUN" LIST') DO "C:\Program Files (x86)\VMware\VMware Workstation\VMRUN" SUSPEND "%%a"
tasklist /FI "IMAGENAME eq vmware-vmx.exe" 2>NUL | find /I /N "vmware-vmx.exe">NUL
if "%ERRORLEVEL%"=="0" (
	ECHO A VM Machine is still running - Close it first
) else ( 
	ECHO Hibernating in 20 Seconds
	timeout /t 20 /NOBREAK > NUL && shutdown /h
)
