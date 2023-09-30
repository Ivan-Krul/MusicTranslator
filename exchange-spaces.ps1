function Switch-SpacesWithDashes {
    param(
        [string]$inputString
    )

    # Use the Replace method to replace spaces with dashes
    $outputString = $inputString -replace '\s', '-'
    $inputString = $outputString -replace '#', '-'

    # Return the modified string
    return $inputString
}

$files= Get-ChildItem -Path "./musics/" -File -Name

foreach ($file in $files) {
    Write-Host $file
    $src = "./musics/$($file)"
    $str = Switch-SpacesWithDashes $file

    Write-Host $src
    Write-Host $str

    Rename-Item -Path $src -NewName $str
}
