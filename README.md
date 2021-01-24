# WindowsProgram-TimeHack

Just a wee little simple hack to change your Windows system time into the programs time trial, launch, then back to normal :) The provided example is for Office 2016 but should work for any Windows program with a basic time trial. Even create a more pretty shortcut to add to your desktop and/or start menu!

## Setup 
Here we have a copy of the Run_Example.cmd and is the template for doing this mini hack. 

``` 
set MMDDYYYY=%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%
date MM-DD-YYYY
cd \path\to\program\file
start PROGRAMNAMEHERE.EXE
timeout 5
date %MMDDYYYY%
```
Firstly: Download this repo to your computer and open `Run_Example.cmd` in your favoite editor, or right click it and choose 'edit'. Find Line 2 (It should be `date MM-DD-YYYY`) to a date that would be inside the trial of the program. (ex. `date 01/18/2021`)

Secondly you will need to get the path to the program you want to launch and replace `\path\to\program\file\location` with it. For example Office 2016 is `\Program Files (x86)\Microsoft Office\root\Office16` You can find this path a coupple ways

- Be an absolute nerd and know how to find the path
- Or For everyone else: 
1. Go to your start menu 
2. Find the program you want
3. Right click it
4. Hover over `More` 
5. Choose `Open file location`. 
- This will open the Start Menu shortcut folder 
6. Right click once again the shortcut to your desired program and choose `Open file location`
- Well done! You can follow instructions! Click the Adress Bar (You know the little thing that says ` This PC > Windows(C:) > Program Files > ect...`) And highlight and copy the full path EXCEPT the `C:` (If it is anywhere but the C drive you will need to add somthing to your .cmd file, I'll get back to that)
- With your path copied go ahead and head over to the Run_Example.cmd file in this project and replace the `\path\to\program\file`
- If your program is not located on the main C drive modify the line above the `cd \path\to\program\file` line and put the letter of the drive letter in place of the C: , ex. Z: 

Lastly: Replace in line 5 (`start PROGRAMNAMEHERE.EXE`) PROGRAMNAMEHERE.EXE with the program name as named and highlighted in that directory (ex. Word 2016 is `WINWORD.EXE`) You may now go ahead and save that as whatever name you want, in a memorable location. You may choose to save it to your desktop but you will need to remember to run this script as administrator. Or... you can.....

## Create a shortcut! The pro way!
Many dont realize, there is alot more to shortcuts then seems! Lets start off (obviously) by finding the .cmd file we just made, wherever you saved it, right click, and choose "create a shortcut" !! Guess were done here then!!

I kidddd we aint though yet.. Rightclick the newly made shortcut, and go to the properties there are a few things you can do but one thing thats required.
- Firstly the requirment, in the `shortcut` tab in the properties. And go to "advanced". Here you should set "run as administrator" 
- Now click OK and go back. You may also opt to set "Run" to minimized so you dont have to see anything. The program will automagicaly terminate and close once done. This just makes things cleaner.
- A big thing you can do (other then renaming it) is to make it look like a pretty program insted of some script. In sthe same shortcut tab, choose `Change Icon`. You can choose one of the windows default icons but if you click browse and head to the location of the program you want to run, clicking on it, and hitting `open` a bunch of icons for that specific program will pop up. You can now make your script shortcut look like a general shortcut to the program! Aint that neat?


For more ease of acess after you are done editing the shortcut and rename it, you can make a copy of that shortcut to `C:\Users\Cyourusername\AppData\Roaming\Microsoft\Windows\Start Menu\Programs` to have easy access to launch this program from the start menu with the "hack" in place! Feel free to delete the orginal shortcut to not make things confusing!

## How it works, 
- This program is really simple it starts by storing the current date (Line1) Don't ask me how that works. I'm a programer, I rely on StackOverflow to find how to do things. Find an answer [Here.](https://stackoverflow.com/questions/36147552/what-does-date-4-4date-10-2date-7-2-time0-2time3-2-mean) I moved things around and added some dashes to format it correctly so it could be used while resetting the date.  
- Then setting your computers date to the desired (Line 2)
- Starting the program under the desired time (lines 3-5)
- Waiting....
- Then it resets the date back to where it was when the program started!

# WELCOME TO YOUR INFINATE TRIAL!!!