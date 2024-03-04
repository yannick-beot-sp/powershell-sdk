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

Request used for account enable/disable

.PARAMETER ExternalVerificationId
If set, an external process validates that the user wants to proceed with this request.
.PARAMETER ForceProvisioning
If set, provisioning updates the account attribute at the source.   This option is used when the account is not synced to ensure the attribute is updated.
.OUTPUTS

AccountToggleRequest<PSCustomObject>
#>

function Initialize-BetaAccountToggleRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalVerificationId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ForceProvisioning}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccountToggleRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "externalVerificationId" = ${ExternalVerificationId}
            "forceProvisioning" = ${ForceProvisioning}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountToggleRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountToggleRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountToggleRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountToggleRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccountToggleRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccountToggleRequest
        $AllProperties = ("externalVerificationId", "forceProvisioning")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "externalVerificationId"))) { #optional property not found
            $ExternalVerificationId = $null
        } else {
            $ExternalVerificationId = $JsonParameters.PSobject.Properties["externalVerificationId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forceProvisioning"))) { #optional property not found
            $ForceProvisioning = $null
        } else {
            $ForceProvisioning = $JsonParameters.PSobject.Properties["forceProvisioning"].value
        }

        $PSO = [PSCustomObject]@{
            "externalVerificationId" = ${ExternalVerificationId}
            "forceProvisioning" = ${ForceProvisioning}
        }

        return $PSO
    }

}

