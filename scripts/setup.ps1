Write-Output "================== Setting up =================="

if(Test-Path setup.ps1) {
    Set-Location ../
}
if(!(Test-Path lib)) {
    New-Item -ItemType Directory -Name lib
}
Set-Location lib/

Write-Output "================== Downloading dependencies =================="

if(!(Test-Path vcpkg)) {
    git clone https://github.com/microsoft/vcpkg.git vcpkg
    Invoke-Expression -Command "./vcpkg/scripts/bootstrap.ps1"
}

if(!(Test-Path daxa)) {
    git clone https://github.com/Ipotrick/Daxa.git daxa
}

Write-Output "================== Compiling dependencies =================="

Set-Location ../

Invoke-Expression -Command "./lib/vcpkg/vcpkg.exe install --triplet x64-windows"