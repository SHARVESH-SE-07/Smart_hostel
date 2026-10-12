@echo off
set BASE=C:\Program Files\MySQL\MySQL Server 8.0
set DATADIR=C:\SmartHostelMySQLData
"%BASE%\bin\mysqld.exe" --datadir="%DATADIR%" --basedir="%BASE%" --port=3307 --bind-address=127.0.0.1 --socket="%DATADIR%\mysql.sock" --log-error="%DATADIR%\smart-hostel-mysql.log" --console
