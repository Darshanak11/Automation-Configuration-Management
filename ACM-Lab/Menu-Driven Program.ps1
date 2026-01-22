do {
    Write-Host "`n====== MENU ======"
    Write-Host "1. Add two numbers"
    Write-Host "2. Subtract two numbers"
    Write-Host "3. Multiply two numbers"
    Write-Host "4. Exit"
    Write-Host "=================="

    $choice = Read-Host "Enter your choice"

    switch ($choice) {
        1 {
            $a = Read-Host "Enter first number"
            $b = Read-Host "Enter second number"
            $result = [int]$a + [int]$b
            Write-Host "Result: $result"
        }

        2 {
            $a = Read-Host "Enter first number"
            $b = Read-Host "Enter second number"
            $result = [int]$a - [int]$b
            Write-Host "Result: $result"
        }

        3 {
            $a = Read-Host "Enter first number"
            $b = Read-Host "Enter second number"
            $result = [int]$a * [int]$b
            Write-Host "Result: $result"
        }

        4 {
            Write-Host "Exiting program..."
        }

        default {
            Write-Host "Invalid choice! Please try again."
        }
    }
}
while ($choice -ne 4)
