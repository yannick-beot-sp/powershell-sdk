#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

#region Import functions

# define the following classes in PowerShell
try {
    Add-Type -AssemblyName System.Web -ErrorAction Ignore | Out-Null
    Add-Type -AssemblyName System.Net -ErrorAction Ignore | Out-Null
} catch {
    Write-Verbose $_
}

# set $ErrorActionPreference to 'Stop' globally
$ErrorActionPreference = 'Stop'

# store the API client's configuration
$Script:Configuration = [System.Collections.HashTable]@{}

$Script:CmdletBindingParameters = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')


$V3API = @( Get-ChildItem -Path "$PSScriptRoot\v3\src\PSSailpoint\Api\*.ps1" )
$V3Client = @( Get-ChildItem -Path "$PSScriptRoot\v3\src\PSSailpoint\Client\*.ps1" )
$V3Model = @( Get-ChildItem -Path "$PSScriptRoot\v3\src\PSSailpoint\Model\*.ps1" )
$V3Private = @( Get-ChildItem -Path "$PSScriptRoot\v3\src\PSSailpoint\Private\*.ps1" )

$BetaAPI = @( Get-ChildItem -Path "$PSScriptRoot\beta\src\PSSailpointBeta\Api\*.ps1")
$BetaClient = @( Get-ChildItem -Path "$PSScriptRoot\beta\src\PSSailpointBeta\Client\*.ps1" )
$BetaModel = @( Get-ChildItem -Path "$PSScriptRoot\beta\src\PSSailpointBeta\Model\*.ps1" )
$BetaPrivate = @( Get-ChildItem -Path "$PSScriptRoot\beta\src\PSSailpointBeta\Private\*.ps1" )

$V2API = @( Get-ChildItem -Path "$PSScriptRoot\v2\src\PSSailpointV2\Api\*.ps1" )
$V2Client = @( Get-ChildItem -Path "$PSScriptRoot\v2\src\PSSailpointV2\Client\*.ps1" )
$V2Model = @( Get-ChildItem -Path "$PSScriptRoot\v2\src\PSSailpointV2\Model\*.ps1" )
$V2Private = @( Get-ChildItem -Path "$PSScriptRoot\v2\src\PSSailpointV2\Private\*.ps1" )

$CCAPI = @( Get-ChildItem -Path "$PSScriptRoot\cc\src\PSSailpointCC\Api\*.ps1" )
$CCClient = @( Get-ChildItem -Path "$PSScriptRoot\cc\src\PSSailpointCC\Client\*.ps1" )
$CCModel = @( Get-ChildItem -Path "$PSScriptRoot\cc\src\PSSailpointCC\Model\*.ps1" )
$CCPrivate = @( Get-ChildItem -Path "$PSScriptRoot\cc\src\PSSailpointCC\Private\*.ps1" )


Foreach ($import in @($V3API + $V3Client + $V3Model + $V3Private + $BetaAPI + $BetaClient + $BetaModel + $BetaPrivate + $V2API + $V2Client + $V2Model + $V2Private + $CCAPI + $CCClient + $CCModel + $CCPrivate)) {
    Try {
        . $import.fullname
    }
    Catch {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

. $PSScriptRoot\Configuration.ps1
. $PSScriptRoot\Pagination.ps1

Install-Module -Name PSYaml -RequiredVersion 1.0.2

#endregion