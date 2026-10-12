@echo off
cd /d "C:\Program Files\MySQL\MySQL Server 8.0\bin"
mysql.exe -u root -e "SELECT User, Host, plugin, authentication_string FROM mysql.user;"
