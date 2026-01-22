# Create folder
$folderPath = "C:\Users\darzn\OneDrive\Desktop\Github Repos\Automation-Configuration-Management"
New-Item -ItemType Directory -Path $folderPath -Force | Out-Null

# Input marks
$marks = Read-Host "Enter student's marks (0 - 100)"
$marks = [int]$marks

# Decision making for grade
if ($marks -ge 90 -and $marks -le 100) {
    $grade = "A"
}
elseif ($marks -ge 75 -and $marks -lt 90) {
    $grade = "B"
}
elseif ($marks -ge 60 -and $marks -lt 75) {
    $grade = "C"
}
elseif ($marks -ge 40 -and $marks -lt 60) {
    $grade = "D"
}
elseif ($marks -ge 0 -and $marks -lt 40) {
    $grade = "Fail"
}
else {
    Write-Host "Invalid marks entered"
    exit
}

# Save result inside folder
$result = "Marks: $marks`nGrade: $grade"
$result | Out-File "$folderPath\result.txt"

# Display output
Write-Host "Result saved inside folder 'StudentResult'"
Write-Host $result
