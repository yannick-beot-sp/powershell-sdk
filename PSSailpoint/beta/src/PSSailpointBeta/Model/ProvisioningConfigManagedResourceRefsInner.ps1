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

.PARAMETER Type
The type of object being referenced
.PARAMETER Id
ID of the source
.PARAMETER Name
Human-readable display name of the source
.OUTPUTS

ProvisioningConfigManagedResourceRefsInner<PSCustomObject>
#>

function Initialize-BetaProvisioningConfigManagedResourceRefsInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SOURCE")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaProvisioningConfigManagedResourceRefsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProvisioningConfigManagedResourceRefsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProvisioningConfigManagedResourceRefsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProvisioningConfigManagedResourceRefsInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToProvisioningConfigManagedResourceRefsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaProvisioningConfigManagedResourceRefsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaProvisioningConfigManagedResourceRefsInner
        $AllProperties = ("type", "id", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
        }

        return $PSO
    }

}

