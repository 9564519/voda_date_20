# Создание задачи из XML файла
$taskName = "Voda_run2"
$xmlPath = ".\Voda\Voda_run.xml"

# Регистрация задачи
Register-ScheduledTask -Xml (Get-Content $xmlPath | Out-String) -TaskName $taskName

# Проверка, была ли задача успешно создана
$task = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue

if ($task -ne $null) {
    # Задача успешно создана
    Write-Host "Задача '$taskName' была успешно создана в планировщике." -ForegroundColor Green
} else {
    # Задача не была создана
    Write-Host "Не удалось создать задачу '$taskName'." -ForegroundColor Red
}

# Ожидание нажатия любой клавиши для выхода
Read-Host -Prompt "Нажмите любую клавишу для выхода"
