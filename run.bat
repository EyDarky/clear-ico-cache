@echo off
color 3
title Clear Ico Cache
mode con:cols=35 lines=2

taskkill /f /im explorer.exe
cd /d %userprofile%\AppData\Local\Microsoft\Windows\Explorer
attrib –h iconcache_*.db
del /f IconCache*
del /f thumbcache*
cd /d  %userprofile%\AppData\Local\
attrib –h IconCache.db
del /f IconCache.db
start C:\Windows\explorer.exe

cls
echo Done!
pause >nul

