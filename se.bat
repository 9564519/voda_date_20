@echo off
chcp 1251 >nul
setlocal

rem ��������� ���� � ����� � ����� ����������
set "sourceFile=Voda_run.xml"
set "destinationFolder=C:\Windows\System32\Voda"

rem ���������, ���������� �� ����� ����������, ���� ���, ������� �
if not exist "%destinationFolder%" (
    mkdir "%destinationFolder%"
)

rem �������� ����
copy "%~dp0%sourceFile%" "%destinationFolder%"

rem �������� ���������� �����������
if %errorlevel% equ 0 (
    echo ���� "%sourceFile%" ������� ���������� � "%destinationFolder%".
) else (
    echo ������ ��� ����������� ����� "%sourceFile%".
)

endlocal
pause
