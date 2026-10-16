@echo off
title KrishiLoop Localhost Web Server
cd /d "%~dp0"
echo ========================================================
echo   Starting KrishiLoop Web & Scroll Animation Server...
echo ========================================================
echo.

:: Open browser automatically after a 1 second delay
start "" cmd /c "timeout /t 1 /nobreak >nul & start http://localhost:3000"

:: Start Node.js server
if exist "C:\Users\sujal\AppData\Local\OpenAI\Codex\runtimes\cua_node\a9ba6825a525118c\bin\node.exe" (
    "C:\Users\sujal\AppData\Local\OpenAI\Codex\runtimes\cua_node\a9ba6825a525118c\bin\node.exe" server.mjs
) else (
    node server.mjs
)

pause
