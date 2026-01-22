$path = "C:\AutomationLab"

if (!(Test-Path $path)) {
    New-Item -ItemType Directory -Path $path
    Write-Output "Folder 'AutomationLab' created successfully."
} else {
    Write-Output "Folder 'AutomationLab' already exists."
}
