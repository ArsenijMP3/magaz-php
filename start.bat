@echo off
chcp 65001 >nul
cd /d "%~dp0"
where php >nul 2>nul
if errorlevel 1 (
  echo PHP не найден. Установите PHP с https://windows.php.net/download и добавьте его в PATH.
  pause
  exit /b 1
)
start "" http://localhost:8000/
echo Сайт: http://localhost:8000/  ^(закройте окно для остановки^)
php -S localhost:8000
