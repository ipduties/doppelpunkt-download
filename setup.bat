@echo off
@break off
@title Setup script for programm doppelpunkt
@color 0a
@cls
set orig=%~dp0
set basisfolder=%USERPROFILE%
set subfolder=doppelpunkt
echo %basisfolder%
set installfolder="%basisfolder%\%subfolder%"
echo Installfolder  %installfolder%
set installfolderwithslach="%installfolder%\"
set binfolder=bin
set targetfolder="target"
set autostartfolder="%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
set programlink=%installfolder%\doppelpunkt.exe

setlocal EnableDelayedExpansion

if not exist %installfolderwithslach% ( 
	echo Folder not exist now install programm into %installfolder%
	taskkill /im AutoHotkey.exe
	mkdir %installfolder%
	REM xcopy /s "%orig%\%binfolder%" "%installfolder%"
	xcopy /s "%orig%\%binfolder%\A*" "%installfolder%"
	xcopy /s "%orig%\%binfolder%\doppelpunkt.lnk*" "%installfolder%"
	cd %autostartfolder%
	xcopy /s "%orig%\%binfolder%\doppelpunkt.lnk" 
	start doppelpunkt.lnk
	cd %orig%
	echo Programm installed
	pause
	exit
	
	) else (
	echo FOLDER %installfolder% exist --- UNINSTALL PROGRAMM	
	cd %autostartfolder%
	if exist doppelpunkt.lnk ( 
		del doppelpunkt.lnk 
		)		
	rmdir %installfolder% /s /q
	cd %orig%
	echo "Programm uninstalled"
	pause
	exit
	) 
exit

