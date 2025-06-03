@echo off 
Rem Deletes the file lists.txt in C:\ 
del C:\Users\y.hadzhiyska\Documents\lists.txt 
Rem Deletes all files recursively in all nested directories
del /s *.txt 
Rem Deletes all files recursively in all nested directories , but asks for the 
confirmation from the user first 
Del /p /s *.txt