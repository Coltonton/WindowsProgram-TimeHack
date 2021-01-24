set MMDDYYYY=%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%
date 01-18-2021
cd \path\to\program\file
start PROGRAMNAMEHERE.EXE
timeout 5
date %MMDDYYYY%
