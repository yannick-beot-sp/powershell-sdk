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

.PARAMETER DISPLAYNAME
True if the entitlements name was updated manually via entitlement import csv or patch endpoint.  False means that property value has not been change after first entitlement aggregation. Field refers to [Entitlement response schema](https://developer.sailpoint.com/idn/api/beta/get-entitlement) > `name` property.
.PARAMETER DESCRIPTION
True if the entitlement description was updated manually via entitlement import csv or patch endpoint.  False means that property value has not been change after first entitlement aggregation. Field refers to [Entitlement response schema](https://developer.sailpoint.com/idn/api/beta/get-entitlement) > `description` property.
.OUTPUTS

ManuallyUpdatedFieldsDTO<PSCustomObject>
#>

function Initialize-BetaManuallyUpdatedFieldsDTO {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DISPLAYNAME} = $false,
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DESCRIPTION} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaManuallyUpdatedFieldsDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "DISPLAY_NAME" = ${DISPLAYNAME}
            "DESCRIPTION" = ${DESCRIPTION}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ManuallyUpdatedFieldsDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to ManuallyUpdatedFieldsDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ManuallyUpdatedFieldsDTO<PSCustomObject>
#>
function ConvertFrom-BetaJsonToManuallyUpdatedFieldsDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaManuallyUpdatedFieldsDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaManuallyUpdatedFieldsDTO
        $AllProperties = ("DISPLAY_NAME", "DESCRIPTION")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DISPLAY_NAME"))) { #optional property not found
            $DISPLAYNAME = $null
        } else {
            $DISPLAYNAME = $JsonParameters.PSobject.Properties["DISPLAY_NAME"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "DESCRIPTION"))) { #optional property not found
            $DESCRIPTION = $null
        } else {
            $DESCRIPTION = $JsonParameters.PSobject.Properties["DESCRIPTION"].value
        }

        $PSO = [PSCustomObject]@{
            "DISPLAY_NAME" = ${DISPLAYNAME}
            "DESCRIPTION" = ${DESCRIPTION}
        }

        return $PSO
    }

}

