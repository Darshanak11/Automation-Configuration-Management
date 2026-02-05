Get-Service |
Where-Object {$_.Status-eq "Stopped"} |
Select-Object Name,Status |
ForEach-Object {
Restart-Service $_.Name-WhatIf
} 