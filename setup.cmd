@echo off
chcp 1251 >nul
setlocal

rem Определяем папку выполнения
set scriptDir=%~dp0

rem Запуск PowerShell скрипта с указанной папкой
powershell -ExecutionPolicy Bypass -File "%scriptDir%setup_1.ps1"

pause
