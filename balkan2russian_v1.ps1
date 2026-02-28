$ru_cls = Get-Content ".\ru-cls.txt"


while ($true)
{ 
  Write-Host
  $text = [string](Read-Host "balkan")
  $text = $text.Normalize()
  
  if ($text -eq "cls" -or $text -eq $ru_cls)
  {
    cls
  }

  else
  {
    $url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=sr&tl=ru&dt=t&q=$([uri]::EscapeDataString($text))"
    $result = Invoke-RestMethod -Uri $url
    Write-Host "russian: $($result[0][0][0])"
    Write-Host
    Write-Host
  }
}
