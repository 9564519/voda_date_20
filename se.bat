@echo off
chcp 1251 >nul
setlocal

rem Указываем путь к файлу и папке назначения
set "sourceFile=Voda_run.xml"
set "destinationFolder=C:\Windows\System32\Voda"

rem Проверяем, существует ли папка назначения, если нет, создаем её
if not exist "%destinationFolder%" (
    mkdir "%destinationFolder%"
)

rem Копируем файл
copy "%~dp0%sourceFile%" "%destinationFolder%"

rem Проверка результата копирования
if %errorlevel% equ 0 (
    echo Файл "%sourceFile%" успешно скопирован в "%destinationFolder%".
) else (
    echo Ошибка при копировании файла "%sourceFile%".
)

endlocal
pause
