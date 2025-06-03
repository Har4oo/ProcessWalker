@echo off
Rem Moves the file list.txt to the directory newdir
move C:\Users\User\Documents\batch\lists.txt C:\Users\User\Documents\batch\Dir2
Rem Renames directory Dir1 to Dir2, assuming Dir1 is a directory and Dir2 does not exist. 
move Dir2 newPlace
Rem Moves the file lists.txt to the current directory.
move C:\Users\User\Documents\batch\lists.txt