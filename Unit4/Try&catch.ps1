try {
    $a = 10
    $b = 0
    $result = $a / $b
    Write-Host "Result: $result"
}
catch {
    Write-Host "Error occurred:"
    Write-Host $_
}
finally {
    Write-Host "Execution completed"
}