# Mi configuración de terminal

Repositorio personal para respaldar y recrear mi entorno de terminal en Windows: PowerShell, Tabby, Windows Terminal, Oh My Posh, fuentes y utilidades.

## Qué contiene

- `powershell/`: perfil de PowerShell 7 y guía de instalación.
- `tabbyconfig/`: exportación de la configuración de Tabby.
- `windows-terminal/`: copia de mis ajustes actuales de Windows Terminal.
- `oh-my-posh/themes/`: tema personalizado Eclipse.
- `fonts/` y `monaspace/`: familias usadas y notas para instalarlas por separado.
- `git/`: plantilla de alias de Git sin datos personales.
- `scripts/`: instalador con copias de seguridad.
- `theme/`: notas sobre los esquemas de color usados.

## Instalación rápida

1. Instala PowerShell 7, Tabby, Windows Terminal, Oh My Posh, Terminal-Icons, PSReadLine, zoxide, eza y bat.
2. Instala las fuentes indicadas en [`fonts/README.md`](fonts/README.md).
3. Desde PowerShell, ejecuta `./scripts/install.ps1` desde este repositorio. El script respalda los archivos existentes antes de copiarlos.
4. Configura Windows Terminal manualmente siguiendo [`windows-terminal/README.md`](windows-terminal/README.md); su archivo de ajustes es una copia completa de este equipo.

El perfil usa herramientas instaladas externamente. Revisa la lista de requisitos antes de abrir una nueva sesión.

## Respaldos y privacidad

No se incluyen historiales, cachés, claves SSH, tokens ni el almacén seguro de Tabby. La copia de Tabby no contiene perfiles guardados ni secretos (`profiles: []`, `vault: null`). Revisa `tabbyconfig/config.yaml` antes de publicar cambios futuros.
