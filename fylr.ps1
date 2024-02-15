<#
.SYNOPSIS
    This code searches for text files containing a specified string within a defined directory. 
    It then outputs the list of matching files or notifies if none are found.
    
.VERSION
    1.1

.NOTES
    Author: James Hunter
    Date:   15/02/24
#>

# Define the directory to search in
$searchDirectory = "C:\Path\To\Search"

# Define the string to search for
$searchString = "SearchString"

# Search for files containing the specified string
$matchingFiles = Get-ChildItem -Path $searchDirectory -Recurse |
    Where-Object { $_.Extension -eq ".txt" -and (Get-Content $_.FullName | Select-String -Pattern $searchString -Quiet) } |
    Select-Object FullName

# Output the list of matching files
if ($matchingFiles) {
    Write-Host "Matching files found:"
    $matchingFiles | ForEach-Object { Write-Host $_.FullName }
} else {
    Write-Host "No files matching the search criteria found."
}
