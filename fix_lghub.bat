@echo off
REM This script needs to be run as administrator.

ECHO Terminating any running G HUB processes...
REM /f parameters are unfortunately required to terminate the processes. They won't go down without it.

REM Not stopping the uninstaller process just in case, it doesn't interfere with our fix, 
REM nor we want to accidentally stop a process cleaning up an uninstall after a restart.
REM Just remove the REM before the next line if you still want to stop the uninstaller too.

REM taskkill /f /im lghub_uninstaller.exe

taskkill /f /im lghub.exe
taskkill /f /im lghub_agent.exe
taskkill /f /im lghub_updater.exe
taskkill /f /im logi_analytics_client.exe
taskkill /f /im logi_crashpad_handler.exe

ECHO Relaunching G HUB...

REM Replace the directory below to point to your G HUB installation
REM if you had it installed to somewhere else.

REM The timeouts are to ensure that the programs work in the specific order.
REM The programs unfortunately need to be kicked on at the right order for it to work.
REM What a programming genius.

timeout 1 /nobreak
start "" "C:\Program Files\LGHUB\lghub_updater.exe"
timeout 1 /nobreak
start "" "C:\Program Files\LGHUB\lghub_agent.exe"
timeout 1 /nobreak
start "" "C:\Program Files\LGHUB\lghub.exe" --background

ECHO All set! G HUB should be working now.

exit
