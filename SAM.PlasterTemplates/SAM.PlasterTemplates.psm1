# Import Variables
$varaiblePath = Join-Path -Path $PSScriptRoot -ChildPath "SAM.PlasterTemplates.Variables.ps1"
. $varaiblePath

#Get public and private function definition files.
$Public  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
foreach($import in @($Public + $Private))
{
    try
    {
        Write-Verbose "Importing $($Import.FullName)"
        . $import.fullname
    }
    catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

Export-ModuleMember -Function $Public.Basename
