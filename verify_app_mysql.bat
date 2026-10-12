@echo off
cd /d "C:\Program Files\MySQL\MySQL Server 8.0\bin"
mysql.exe -h 127.0.0.1 -P 3307 -u sharvesh -psharvesh@1 -e "SHOW DATABASES;"
