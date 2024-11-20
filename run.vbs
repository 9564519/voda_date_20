Set objShell = CreateObject("WScript.Shell")

' Получаем путь к исполняющему файлу vbs
strScriptPath = WScript.ScriptFullName
arrPath = Split(strScriptPath, "\")
strParentFolder = Replace(strScriptPath, arrPath(UBound(arrPath)), "")

' Формируем полный путь к exe файлу
strCommand = strParentFolder & "date_20_4.exe"

' Запускаем exe файл
objShell.Run strCommand, 0, True
