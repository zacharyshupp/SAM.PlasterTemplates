function New-SAMModule {

	<#
		.SYNOPSIS
			Create a new SAM Module

		.DESCRIPTION
			Creates a new SAM Module based on Plaster Configuration

		.EXAMPLE
			PS:> New-SAMModule -Name SAM.VisualStudioManagement -Description "PowerShell Module To ..." -Destination "E:\Super-Awesome-Modules\SAM.VisualStudioManagement"

			This example demonstrates how to call the function to generate a new function.
	#>

	[CmdletBinding()]
	[OutputType([System.Void])]
	param (

		# Specifies the Module Name.
		[Parameter(Mandatory)]
		[String]
		$Name,

		# Specifies the Description for the new module.
		[Parameter()]
		[String]
		$Description = "PowerShell Module To ...",

		# Specifies the location to save the new module to.
		[Parameter(Mandatory)]
		[String]
		$Destination

	)

	$plasterParmas = @{
		TemplatePath      = $SAMModuleTemplate
		DestinationPath   = $Destination
		ModuleName        = $Name
		ModuleDescription = $Description
		Force             = $true
	}

	if ($PSBoundParameters.Verbose) { $plasterParmas.Add("Verbose", $true) }

	Invoke-Plaster @plasterParmas

}
