$ru_cls = Read-Host "cls in russian"
Set-Content -Path "$PSScriptRoot\ru-cls.txt" -Value $ru_cls -Encoding UTF8
