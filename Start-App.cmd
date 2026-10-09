@echo off
cd /d "%~dp0"
powershell -NoProfile -Command "Start-Process -FilePath 'C:\Users\aone\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' -ArgumentList @('server.py','--open') -WorkingDirectory '%~dp0' -WindowStyle Hidden"
