@echo off
md newdir 
cd newdir 
Rem “Goes back to the parent directory and create 2 directories” 
cd.. 
md newdir1 newdir2
cd newdir1 
cd
cd.. 
cd newdir2 
cd