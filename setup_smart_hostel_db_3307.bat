@echo off
cd /d "C:\Program Files\MySQL\MySQL Server 8.0\bin"
mysql.exe -h 127.0.0.1 -P 3307 -u root -e "CREATE DATABASE IF NOT EXISTS smart_hostel CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; CREATE USER IF NOT EXISTS 'sharvesh'@'localhost' IDENTIFIED BY 'sharvesh@1'; GRANT ALL PRIVILEGES ON smart_hostel.* TO 'sharvesh'@'localhost'; FLUSH PRIVILEGES;"
