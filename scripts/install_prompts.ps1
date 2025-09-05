# Script to install prompts to VS Code user prompts directory
# Works on Windows

# Define the destination directory for Windows
$DEST_DIR = "$env:APPDATA\Code\User\prompts"

Write-Host "Installing prompts to: $DEST_DIR"

if (!(Test-Path $DEST_DIR)) {
    New-Item -ItemType Directory -Path $DEST_DIR -Force
}

$promptFiles = Get-ChildItem -Path "./reusable_prompts" -Filter "*.prompt.md" -Recurse

Write-Host "Found $($promptFiles.Count) prompt files to install"

$copyCount = 0
foreach ($file in $promptFiles) {
    $fileName = $file.Name
    $destFile = Join-Path $DEST_DIR $fileName

        Copy-Item -Path $file.FullName -Destination $destFile
        Write-Host "Installed: $fileName"
        $copyCount++
}

Write-Host "Installation complete!"
Write-Host "Successfully installed $copyCount prompt files to $DEST_DIR"
