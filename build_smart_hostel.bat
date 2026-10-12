@echo off
set JAVA_HOME=C:\Program Files\Java\jdk-17
set PATH=C:\Tools\apache-maven-3.9.16\bin;%PATH%
cd /d "C:\Users\SHARVESH\OneDrive\Desktop\project\SmartHostel_VSCode_Project\SmartHostel"
call mvn clean package -DskipTests
