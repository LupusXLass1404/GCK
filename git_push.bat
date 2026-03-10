@echo off
setlocal

:: 取得今天日期 YYYY-MM-DD
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set TODAY=%%i

git add .
git commit -m "%TODAY%"
git push

pause