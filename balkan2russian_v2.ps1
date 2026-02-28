cls
$ru_cls = Get-Content ".\ru-cls.txt"

while ($true)
{ 
  $text = Read-Host "balkan"
  $text = $text.Normalize()
  #[PSCustomObject]@{ balkan = $Text } | Format-Table -AutoSize
  
  if ($text -eq "cls" -or $text -eq $ru_cls)
  {
    cls
  }

  else
  {
    $url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=sr&tl=ru&dt=t&q=$([uri]::EscapeDataString($text))"
    $result = Invoke-RestMethod -Uri $url
    [PSCustomObject]@{ russian = $result[0][0][0] } | Format-Table -AutoSize
  }
}
