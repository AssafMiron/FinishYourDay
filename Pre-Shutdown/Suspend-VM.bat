echo off
REM Suspend any running VM machines
FOR /F "skip=1 tokens=*" %%a IN ('"C:\Program Files (x86)\VMware\VMware Workstation\VMRUN" LIST') DO "C:\Program Files (x86)\VMware\VMware Workstation\VMRUN" SUSPEND "%%a"
tasklist /FI "IMAGENAME eq vmware-vmx.exe" 2>NUL | find /I /N "vmware-vmx.exe">NUL
if "%ERRORLEVEL%"=="0" (
	ECHO A VM machine is still running - Close it first
)