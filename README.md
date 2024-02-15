# fylr
This script searches for files containing a specified string within a given directory and its subdirectories, focusing on text files with a `.txt` extension.

## Prerequisites
To run this script, you will need:

- PowerShell 5.1 or later
- A directory containing text files (`.txt`)

## Instructions
- **Search Directory:** Modify the `$searchDirectory` variable to specify the directory where you want to search for files.
- **Search String:** Adjust the `$searchString` variable to define the string you're searching for within the files.
- **Execution:** Run the script `fylr.ps1` in a PowerShell environment.

## Output
- If matching files are found, their full paths are displayed.
- If no files match the search criteria, a corresponding message is shown.

## Note
- This script specifically searches for `.txt` files. Modify the `-eq ".txt"` condition if you need to search for files with different extensions.