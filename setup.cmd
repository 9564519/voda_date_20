@echo off
chcp 1251 >nul
setlocal

rem ���������� ����� ����������
set scriptDir=%~dp0

rem ������ PowerShell ������� � ��������� ������
powershell -ExecutionPolicy Bypass -File "%scriptDir%setup_1.ps1"

pause
