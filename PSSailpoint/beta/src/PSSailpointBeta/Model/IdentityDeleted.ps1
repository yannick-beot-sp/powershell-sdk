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

.PARAMETER Identity
No description available.
.PARAMETER Attributes
The attributes assigned to the identity. Attributes are determined by the identity profile.
.OUTPUTS

IdentityDeleted<PSCustomObject>
#>

function Initialize-BetaIdentityDeleted {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaIdentityDeleted' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Identity) {
            throw "invalid value for 'Identity', 'Identity' cannot be null."
        }

        if (!$Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "attributes" = ${Attributes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityDeleted<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityDeleted<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityDeleted<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityDeleted {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaIdentityDeleted' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityDeleted
        $AllProperties = ("identity", "attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'identity' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'identity' missing."
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}

