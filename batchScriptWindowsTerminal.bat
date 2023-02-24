REM script that works with window terminal to run dev servers

@echo off 

REM Set your path to your code repository here
SET rootPath=C:\

wt --tabColor #009999 --title tab1 -d "%rootPath%\server1\location" PowerShell -NoExit -Command "server1 start command"
REM uncomment below for time out inbetween servers for a improper way of awaiting for depedent servers
REM timeout /t 5 /nobreak
wt -w 0 nt --tabColor #1EBBFF --title tab2 -d "%rootPath%\server2\target" PowerShell -NoExit -Command "server2 start command"; ^
new-tab -H --tabColor #CF30F1 --title tab3 -d "%rootPath%\server3\target" PowerShell -NoExit -Command "server3 start command"; ^
new-tab -H --tabColor #F1A430 --title tab4 -d "%rootPath%" 
