@echo off
cd /d "C:\Users\dan93\tryotrix.github.io"
git add .
git commit -m "v3.2"
git push

:: Überprüfen, ob der Ordner bereits geöffnet ist
powershell -Command ^
"$shell = New-Object -ComObject Shell.Application; ^
$windows = $shell.Windows(); ^
$folderPath = 'C:\\Users\\dan93\\tryotrix.github.io'; ^
$alreadyOpen = $false; ^
foreach ($window in $windows) { ^
    if (($window.LocationURL -replace 'file:///', '' -replace '/', '\\') -ieq $folderPath) { ^
        $alreadyOpen = $true; ^
        break; ^
    } ^
} ^
if (-not $alreadyOpen) { ^
    Start-Process explorer.exe 'C:\Users\dan93\tryotrix.github.io' ^
}"
pause
