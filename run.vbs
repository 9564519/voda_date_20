Set objShell = CreateObject("WScript.Shell")

' �������� ���� � ������������ ����� vbs
strScriptPath = WScript.ScriptFullName
arrPath = Split(strScriptPath, "\")
strParentFolder = Replace(strScriptPath, arrPath(UBound(arrPath)), "")

' ��������� ������ ���� � exe �����
strCommand = strParentFolder & "date_20_4.exe"

' ��������� exe ����
objShell.Run strCommand, 0, True
