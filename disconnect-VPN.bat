echo off
set vpnURL="https://vpn.mycompany.com"

REM Disconnect Checkpoint VPN
REM "C:\Program Files (x86)\CheckPoint\Endpoint Connect\trac.exe" disconnect

REM Disconnect Pulse VPN
"C:\Program Files (x86)\Common Files\Pulse Secure\Integration\pulselauncher.exe" -signout -url %vpnURL%