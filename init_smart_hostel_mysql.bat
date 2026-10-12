@echo off
setlocal
set BASE=C:\Program Files\MySQL\MySQL Server 8.0
set DATADIR=C:\SmartHostelMySQLData
if not exist "%DATADIR%" mkdir "%DATADIR%"
"%BASE%\bin\mysqld.exe" --initialize-insecure --datadir="%DATADIR%" --basedir="%BASE%"
