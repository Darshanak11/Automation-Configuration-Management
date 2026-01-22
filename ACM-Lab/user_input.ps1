
$folderPath = "C:\Users\darzn\OneDrive\Desktop\Github Repos\Automation-Configuration-Management\ACM-Lab"

if (!(Test-Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
}

Set-Location $folderPath

$userInput = Read-Host "Enter your name"

Write-Host "You entered: $userInput"
