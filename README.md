# fix-lghub
A simple script that fixes that G HUB loop problem (you open the program and that G sign animation plays forever) by terminating all G HUB processes and restarting them at the correct order. Based on redditor Missu_'s fix for it at https://www.reddit.com/r/LogitechG/comments/bjiikt/g_hub_stuck_on_loading_animation/f1m6kia

## Usage
Simply download this repository as a .zip, extract it, and run the ``fix_lghub.bat`` as administrator (otherwise it won't be able to terminate the processes)

Note: If you have installed G HUB at a different place than ``C:\Program Files\LGHUB\``, then you'll need to replace all file paths to the correct installation directory.

## Automating it
You can automate this script to run at each logon (so you won't have to run every time you reboot) using Task Scheduler. Copy the batch file to somewhere useful (such as your user's folder) and create a task in Task Scheduler with following settings:

* Name and description is as you like 
* Your user account is chosen for "Run when this account logs on"
* "Run with highest privileges" checked
* Check "Hidden" if you don't want to see the command prompt at each boot
* "Configure for" is set to your OS version
* On Triggers, set a trigger for log on, any user or your user. Add a delay of 1 minute to ensure it kicks on after G HUB is ran once. 
* On Actions, set an action to run this batch
* On Conditions, uncheck "Start the task only if the computer is on AC power"

That's it, now the script will fix G HUB on each log on and you can forget about it.

Obviously, the script is as-is. No guarantees.
