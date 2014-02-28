____________________
RealmLog.xlsm Readme
____________________

CammieWiz - 2/27/2014

RealmLog is intended for measuring how effective different methods of play are in Realm of the Mad God (www.realmofthemadgod.com).  Typically an hour or two of focused play time with a certain approach will give you good results.

The file is maintained in a GitHub project and is free for distribution.  Feel free to contribute/discuss on the project page here: https://github.com/CammieWiz/RealmLog/.  It's currently set up for what I wanted to measure - feel free to change it around for your own purposes.


-- Enabling Macros --

The spreadsheet uses Excel macros to run the buttons and enter data in the log.  Note that it doesn't actually interface with the game in any way so it doesn't violate TOS.

Note, you really SHOULDN'T run untrusted macro sheets, as they can have potentially nasty code which could be a problem (silly Micro$oft).  

Here's how you can check that macros in a sheet are benign:
1) Run the sheet in Excel, it'll give you a security warning that some active content has been disabled (macros won't run); don't enable the macros yet.
2) Press ALT-F11 to bring up the code window and look through the code for the sheet.
3) Once you've checked the code and you're happy, close the code window and sheet.
4) Re-open the sheet and this time enable macros (using the "Options..." button next to the security warning in Excel 2007).


-- Using the Sheet --

The sheet has sample data - press reset and it will clear.
Type in a good description so you know the context of the session your running for later reference (I write something like "Running Abyss's with 3/8 pally, clearing for trooms").
When you enter a realm, or leave a dungeon, press "Realm", and it will log your start time.
When you return to Nexus press "Nexus", and it will log the stop time (pause the clock).  It will also prompt you for your XP to record (from the days when you could check it in Muledump realtime); you can just press return to leave the field blank.  
If you make a mistake in the log, press "Back" and it will delete the last entry.
The other buttons should be pretty self explanitory.
You can edit the data in the first three columns of the log after the fact if you need to.  If you manually add or remove rows and stuff gets messed up, you can fill down the formulae from cells D4 through I4 and it should fix things.
You can copy and rename the worksheet tab, or just copy the workbook for other sessions; all the code is local to the sheet and will get copied too.

Note, this is a little annoying - you have to click on the sheet once to get focus, and once to click the button.  You'll then need to click back on realm to start playing.  Windows... what can you do.


-- Metrics --

The sheet calculates some useful metrics from the log.  All pots are converted to DEF equivalent so you can compare different dungeons.  The DEF Rate column can be edited for the trading rates you use.


Happy pew-pew!

CammieWiz
