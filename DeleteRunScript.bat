@echo off
setlocal setlocal EnableDelayedExpansion
echo DELETE FILES THAN COPY NEEDED FILES
echo -----------------------------------------------------------------------------------------------------------
echo Delete Files C:\TwinCAT\3.1\Boot\*  and than Copy under the C:\Projects\dev\application\release\ files here
echo ------------------------------------------------------------------------------------------------------------

set "source=C:\Projects\dev\application\release"

set "destination=C:\TXXCXT\3.1\Boot"

echo Batch to delete all files 

DEL /s /f /q "C:\TXXCXT\3.1\Boot\*.*" 

echo Done Deleted All Files !

echo Batch to Delete All Folders and Subfolders You use bellow command single % parameter on CMD

FOR /D %%p IN ("C:\TXXCXT\3.1\Boot\*.*") DO rmdir "%%p" /s /q 

echo Done Deleted All Files and Subfolders!

echo  Copy all files and folders destination path

robocopy "%source%" "%destination%" /S

exit /b

echo run exe files 

start /D "C:\Users\dcarp\AppData\Local\Programs\WorkFlowy" WorkFlowy.exe

pause
