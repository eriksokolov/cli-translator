while ($true)
{ 
  Write-Host
  $text = Read-Host "balkan"
  $url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=sr&tl=ru&dt=t&q=$([uri]::EscapeDataString($text))"

  if ($text -eq "cls")
  {
    cls
  }

  else
  {
    $result = Invoke-RestMethod -Uri $url
    Write-Host "russian: $($result[0][0][0])"
    Write-Host
    Write-Host
  }
}
