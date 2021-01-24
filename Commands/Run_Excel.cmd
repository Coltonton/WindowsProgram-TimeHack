set MMDDYYYY=%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%
echo %MMDDYYYY%
C:
date 01-18-2021
cd \Program Files (x86)\Microsoft Office\root\Office16
start EXCEL.EXE
timeout 3
date %MMDDYYYY%
