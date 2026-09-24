Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$repoRootForGit = $repoRoot.Replace('\', '/')
$sourceRoot = 'C:\MyGames\Steam\steamapps\workshop\content\885970\2785337814'

$currentBranch = (& git -c "safe.directory=$repoRootForGit" branch --show-current).Trim()
if ($currentBranch -ne 'main') {
    Write-Warning 'Переключитесь вручную на ветку main'
    exit 1
}

if (-not (Test-Path -LiteralPath $sourceRoot -PathType Container)) {
    throw "Original mod directory does not exist: $sourceRoot"
}

Push-Location -LiteralPath $repoRoot
try {
    $entries = & git -c "safe.directory=$repoRootForGit" ls-files --stage -- data

    foreach ($entry in $entries) {
        if ($entry -notmatch '^\d+\s+([0-9a-f]+)\s+\d+\t(.+)$') {
            continue
        }

        $mainHash = $Matches[1]
        $relativePath = $Matches[2]
        $relativeWindowsPath = $relativePath.Replace('/', [IO.Path]::DirectorySeparatorChar)
        $sourceFile = Join-Path $sourceRoot $relativeWindowsPath
        $destinationFile = Join-Path $repoRoot $relativeWindowsPath

        if (-not (Test-Path -LiteralPath $sourceFile -PathType Leaf)) {
            Remove-Item -LiteralPath $destinationFile -Force -ErrorAction SilentlyContinue
            continue
        }

        $sourceHash = (& git -c "safe.directory=$repoRootForGit" hash-object "--path=$relativePath" -- $sourceFile).Trim()
        if ($sourceHash -ne $mainHash) {
            $destinationDirectory = Split-Path -Parent $destinationFile
            New-Item -ItemType Directory -Path $destinationDirectory -Force | Out-Null
            Copy-Item -LiteralPath $sourceFile -Destination $destinationFile -Force
        }
    }
}
finally {
    Pop-Location
}
