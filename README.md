# FinishYourDay

## Overview
Everyone finishes their day in some way that best fits them
My personal "flavor" was to make sure to:
- Suspend any online VMs I had
- Disconnect my VPN connection
- Hibernate my laptop (so I can resume the next day from where I left off)

I shared here some BATCH snippets for you to combine your own "flavor" of script to help you finish you day
Hope you find it useful


## Available snippets
### Pre-Shutdown
- [Disconnect VPN](Pre-Shutdown\disconnect-VPN.bat)
    - Samples for Checkpoint VPN and Juniper Pulse VPN
- [Log date and time](Pre-Shutdown\LogDate.bat)
    - Will log the end date and time to a CSV file
    - You should change the path for the CSV file and pre-create it with the relevant headers
    - To complete the use for this file, you can create a similar script that you use to start your day (and log the time you start your day in the same CSV)
- [Suspend VMWare VMs](Pre-Shutdown\Suspend-VM.bat)
    - USed to suspend any running VMWare workstation VMs that might be running

### Shutdown
Samples include a 20 seconds timeout
- [Hibernate](Shutdown\Hibernate.bat)
- [Shutdown with fast startup](Shutdown\FastStartup-Shutdown.bat)
- [Logoff](Shutdown\Logoff.bat)


# License
This repository is licensed under Apache License 2.0 - see [LICENSE](LICENSE) for more details.

Copyright © 2022 Assaf Miron