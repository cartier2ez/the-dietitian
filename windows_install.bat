@echo off
setlocal

echo Welcome to the Dietitian install script!

:: --- Prompt for MySQL Credentials ---
set /p MYSQL_USER=Enter your MySQL username:
set /p MYSQL_PASSWORD=Enter your MySQL password:
echo.

:: --- Set the database name ---
set MYSQL_DATABASE=dietitian

:: --- Run MySQL Commands ---
echo Setting up MySQL database...
cd /d expo-app\data\database || (echo Directory not found! && exit /b 1)
mysql -u %MYSQL_USER% -p%MYSQL_PASSWORD% %MYSQL_DATABASE% -e "source user.sql; source item.sql; source Paul.sql; source WTRMLNWTR.sql;"
echo.

:: --- Set up server ---
echo Installing server packages
cd /d ..\..\..\server
call npm install
echo.

:: --- Set up app ---
echo Installing app packages
cd /d ..\expo-app
call npm install
echo.

:: --- Done ---
echo Done installing Dietitian!
echo Make sure to check out the README for info on how to run the project.

pause