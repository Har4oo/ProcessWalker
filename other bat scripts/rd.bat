@echo off
Rem removes the directory called newdir
rd C:\Users\User\Documents\batch\newdir

Rem removes 2 directories
rd Dir1 Dir2

Rem Removes directory with spaces
rd "dir space"

Rem Removes the directory Dir1 including all the files and subdirectories in it 
rd /s newPlace
Rem Removes the directory Dir1 including all the files and subdirectories in it but asks for a user confirmation first.
rd /q /s newPlace2
pause