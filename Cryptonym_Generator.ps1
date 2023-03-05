<# Crytonym_Generator
V1.0
#>
$genstamp=Get-Date -Format o
Write-Output "Generating Cryptonyms from Files ListA.txt and ListB.txt"
$partA=(Get-Random -InputObject (Get-Content .\ListA.txt))
$partB=(Get-Random -InputObject (Get-Content .\ListB.txt))
$cryptonym=$partA+" "+$partB
$genstamp+" "+$cryptonym >> .\UsedNames.txt 
(Get-Content .\ListA.txt) -replace "$partA" | Out-File .\listA.txt
(Get-Content .\ListB.txt) -replace "$partB" | Out-File .\listB.txt
Write-Output "Your Cryptonym for this project is "$cryptonym 
Write-Output "Press Enter To Exit"
Read-Host
Exit
#SPDX-License-Identifier: MIT
#SPDX-FileCopyrightText: © 2023 Blue Eclipse Ltd <dan@blueeclipse.co.uk>