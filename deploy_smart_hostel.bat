@echo off
setlocal
set TOMCAT=C:\Tools\apache-tomcat-10.1.61
set WAR=C:\Users\SHARVESH\OneDrive\Desktop\project\SmartHostel_VSCode_Project\SmartHostel\target\smart-hostel.war

if not exist "%WAR%" (
  echo WAR not found: %WAR%
  exit /b 1
)

copy /Y "%WAR%" "%TOMCAT%\webapps\smart-hostel.war"
if exist "%TOMCAT%\webapps\smart-hostel.zip" del /F /Q "%TOMCAT%\webapps\smart-hostel.zip"
copy /Y "%WAR%" "%TOMCAT%\webapps\smart-hostel.zip"
if exist "%TOMCAT%\webapps\smart-hostel" rmdir /S /Q "%TOMCAT%\webapps\smart-hostel"
if not exist "%TOMCAT%\webapps\smart-hostel" mkdir "%TOMCAT%\webapps\smart-hostel"
powershell -NoProfile -Command "Expand-Archive -Path '%TOMCAT%\webapps\smart-hostel.zip' -DestinationPath '%TOMCAT%\webapps\smart-hostel' -Force"

if exist "%TOMCAT%\webapps\smart-hostel\WEB-INF\web.xml" (
  echo Deployment successful: smart-hostel is unpacked in Tomcat webapps.
) else (
  echo Deployment failed: app not unpacked correctly.
  exit /b 1
)
endlocal
