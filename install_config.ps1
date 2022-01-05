#!/usr/bin/env pwsh

# If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
#  {    
#   Echo "This script needs to be run As Admin"
#   Break
#  }

$URL = 'https://ftp.nluug.nl/pub/vim/pc/gvim82.exe'
curl -o vim.exe -L $URL

$children = Get-ChildItem
$install_dir = "$env:ProgramFiles" -replace 'Program Files$','Program Files (x86)'
$install_path = "$install_dir" + '\vim\'

Write-Output "Script Root: $PSSCRIPTROOT"
# Write-Output $children.name|
#  Format-Table

$children|foreach {
  switch -regex ($($_.name))
  {
    '^.+\.ttf$' {Start-Process ./$_}
    '^.+\.exe$' {Start-Process ./$_}
    'vim82' {Copy-Item -Recurse -Force $_ $install_path }
    '^.+\.ps1$' {'Leave *.ps1 files alone'}
    default {"File-type not recognized: $_"}
  }
}
