$folderPath = "C:\Users\darzn\OneDrive\Desktop\Github Repos\Automation-Configuration-Management"
$numberOfFiles = 5
if (!(Test-Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
}

# Loop to create files
for ($i = 1; $i -le $numberOfFiles; $i++) {
    $filePath = "$folderPath\data$i.txt"
    "This is data file number $i" | Out-File $filePath
}