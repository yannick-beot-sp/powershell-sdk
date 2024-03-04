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

.PARAMETER KbaAuthResponseItems
No description available.
.PARAMETER Status
MFA Authentication status
.OUTPUTS

KbaAuthResponse<PSCustomObject>
#>

function Initialize-BetaKbaAuthResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${KbaAuthResponseItems},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PENDING", "SUCCESS", "FAILED", "LOCKOUT", "NOT_ENOUGH_DATA")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaKbaAuthResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "kbaAuthResponseItems" = ${KbaAuthResponseItems}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to KbaAuthResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to KbaAuthResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

KbaAuthResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToKbaAuthResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaKbaAuthResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaKbaAuthResponse
        $AllProperties = ("kbaAuthResponseItems", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "kbaAuthResponseItems"))) { #optional property not found
            $KbaAuthResponseItems = $null
        } else {
            $KbaAuthResponseItems = $JsonParameters.PSobject.Properties["kbaAuthResponseItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "kbaAuthResponseItems" = ${KbaAuthResponseItems}
            "status" = ${Status}
        }

        return $PSO
    }

}

