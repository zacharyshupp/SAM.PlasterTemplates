# <%=$PLASTER_PARAM_ModuleName%>

[![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/<%=$PLASTER_PARAM_ModuleName%>?color=Green&logo=PowerShell&style=for-the-badge)](https://www.powershellgallery.com/packages/<%=$PLASTER_PARAM_ModuleName%>)
[![Minimum Supported PowerShell Version](https://img.shields.io/static/v1?label=PSVersion&message=5.1%2B&color=Green&logo=PowerShell&style=for-the-badge)](https://github.com/PowerShell/PowerShell)

<%=$PLASTER_PARAM_ModuleName%> is a PowerShell module to ...

## Installation

### Option A: Download from PowerShell Gallery

```PowerShell
Install-Module -Name <%=$PLASTER_PARAM_ModuleName%>
```

### Option B: Manual Download from GitHub

1. Download the repository
2. Unblock Zip File before extracting
3. Extract the zip file to any directory
4. Run `.\build.ps1 -InstallDependencies -Task Build` (exists in project root)
5. `build.ps1` creates a folder called `~\BuildOutput\<%=$PLASTER_PARAM_ModuleName%>` in the directory which `<%=$PLASTER_PARAM_ModuleName%>` was saved to.
6. Run `Import-Module -Path "C:\Path\To\buildoutput\<%=$PLASTER_PARAM_ModuleName%>"` to import module

## Additional Items

[Contributing][0]

[0]: Docs\contributing.md
