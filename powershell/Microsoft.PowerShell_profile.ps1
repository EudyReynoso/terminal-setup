# ==============================
# PowerShell Profile
# ==============================

# Oh My Posh
oh-my-posh init pwsh --config "$HOME\.config\ohmyposh\mythemes\eclipse.omp.json" | Invoke-Expression

#atuin init powershell | Out-String | Invoke-Expression

#oh-my-posh init pwsh --config "$HOME\oh-my-posh\omi-ocean.omp.json" | Invoke-Expression


# Terminal Icons
Import-Module Terminal-Icons

# PSReadLine
Import-Module PSReadLine

Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -HistoryNoDuplicates

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# eza
function ls {
    eza --icons @args
}

function ll {
    eza -lah --icons --git @args
}

function la {
    eza -a --icons @args
}

function lt {
    eza --tree --level=2 --icons @args
}

# bat
function cat {
    bat --paging=never @args
}

# Navegación
function .. {
    Set-Location ..
}

function ... {
    Set-Location ../..
}

function .... {
    Set-Location ../../..
}

# Git
function gs {
    git status
}

function ga {
    git add @args
}

function gaa {
    git add .
}

function gc {
    git commit @args
}

function gp {
    git push @args
}

function gl {
    git log --oneline --graph --decorate --all
}

function gb {
    git branch @args
}

function gco {
    git checkout @args
}
