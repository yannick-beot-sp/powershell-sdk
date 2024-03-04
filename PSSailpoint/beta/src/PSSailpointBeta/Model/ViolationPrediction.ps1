#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

An object containing a listing of the SOD violation reasons detected by this check.

.PARAMETER ViolationContexts
List of Violation Contexts
.OUTPUTS

ViolationPrediction<PSCustomObject>
#>

function Initialize-BetaViolationPrediction {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ViolationContexts}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaViolationPrediction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "violationContexts" = ${ViolationContexts}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ViolationPrediction<PSCustomObject>

.DESCRIPTION

Convert from JSON to ViolationPrediction<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ViolationPrediction<PSCustomObject>
#>
function ConvertFrom-BetaJsonToViolationPrediction {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaViolationPrediction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaViolationPrediction
        $AllProperties = ("violationContexts")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "violationContexts"))) { #optional property not found
            $ViolationContexts = $null
        } else {
            $ViolationContexts = $JsonParameters.PSobject.Properties["violationContexts"].value
        }

        $PSO = [PSCustomObject]@{
            "violationContexts" = ${ViolationContexts}
        }

        return $PSO
    }

}

