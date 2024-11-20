# �������� ������ �� XML �����
$taskName = "Voda_run2"
$xmlPath = ".\Voda\Voda_run.xml"

# ����������� ������
Register-ScheduledTask -Xml (Get-Content $xmlPath | Out-String) -TaskName $taskName

# ��������, ���� �� ������ ������� �������
$task = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue

if ($task -ne $null) {
    # ������ ������� �������
    Write-Host "������ '$taskName' ���� ������� ������� � ������������." -ForegroundColor Green
} else {
    # ������ �� ���� �������
    Write-Host "�� ������� ������� ������ '$taskName'." -ForegroundColor Red
}

# �������� ������� ����� ������� ��� ������
Read-Host -Prompt "������� ����� ������� ��� ������"
