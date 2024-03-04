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

No description available.

.PARAMETER LeftCriteria
No description available.
.PARAMETER RightCriteria
No description available.
.OUTPUTS

ExceptionAccessCriteria<PSCustomObject>
#>

function Initialize-BetaExceptionAccessCriteria {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LeftCriteria},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RightCriteria}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaExceptionAccessCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "leftCriteria" = ${LeftCriteria}
            "rightCriteria" = ${RightCriteria}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ExceptionAccessCriteria<PSCustomObject>

.DESCRIPTION

Convert from JSON to ExceptionAccessCriteria<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ExceptionAccessCriteria<PSCustomObject>
#>
function ConvertFrom-BetaJsonToExceptionAccessCriteria {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaExceptionAccessCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaExceptionAccessCriteria
        $AllProperties = ("leftCriteria", "rightCriteria")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "leftCriteria"))) { #optional property not found
            $LeftCriteria = $null
        } else {
            $LeftCriteria = $JsonParameters.PSobject.Properties["leftCriteria"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rightCriteria"))) { #optional property not found
            $RightCriteria = $null
        } else {
            $RightCriteria = $JsonParameters.PSobject.Properties["rightCriteria"].value
        }

        $PSO = [PSCustomObject]@{
            "leftCriteria" = ${LeftCriteria}
            "rightCriteria" = ${RightCriteria}
        }

        return $PSO
    }

}

