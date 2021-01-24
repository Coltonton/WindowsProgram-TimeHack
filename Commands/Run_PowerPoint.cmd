set MMDDYYYY=%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%
echo %MMDDYYYY%
date 01-18-2021
C:
cd \Program Files (x86)\Microsoft Office\root\Office16
start POWERPNT.EXE
timeout 3
date %MMDDYYYY%
