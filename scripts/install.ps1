$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
$profileDir = Join-Path ([Environment]::GetFolderPath('MyDocuments')) 'PowerShell'
$profilePath = Join-Path $profileDir 'Microsoft.PowerShell_profile.ps1'
$themeDir = Join-Path $HOME '.config\ohmyposh\mythemes'
$themePath = Join-Path $themeDir 'eclipse.omp.json'
$stamp = Get-Date -Format 'yyyyMMdd-HHmmss'

New-Item -ItemType Directory -Path $profileDir, $themeDir -Force | Out-Null
if (Test-Path $profilePath) { Copy-Item $profilePath "$profilePath.backup-$stamp" }
if (Test-Path $themePath) { Copy-Item $themePath "$themePath.backup-$stamp" }
Copy-Item (Join-Path $repo 'powershell\Microsoft.PowerShell_profile.ps1') $profilePath -Force
Copy-Item (Join-Path $repo 'oh-my-posh\themes\eclipse.omp.json') $themePath -Force
Write-Host "Perfil instalado: $profilePath"
Write-Host "Tema instalado:   $themePath"
Write-Host 'Abre una sesión nueva de PowerShell para aplicar los cambios.'