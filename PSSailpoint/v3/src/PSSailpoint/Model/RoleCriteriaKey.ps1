#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Refers to a specific Identity attribute, Account attibute, or Entitlement used in Role membership criteria

.PARAMETER Type
No description available.
.PARAMETER Property
The name of the attribute or entitlement to which the associated criteria applies.
.PARAMETER SourceId
ID of the Source from which an account attribute or entitlement is drawn. Required if type is ACCOUNT or ENTITLEMENT
.OUTPUTS

RoleCriteriaKey<PSCustomObject>
#>

function Initialize-RoleCriteriaKey {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Property},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => RoleCriteriaKey' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Property) {
            throw "invalid value for 'Property', 'Property' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "property" = ${Property}
            "sourceId" = ${SourceId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleCriteriaKey<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleCriteriaKey<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleCriteriaKey<PSCustomObject>
#>
function ConvertFrom-JsonToRoleCriteriaKey {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => RoleCriteriaKey' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RoleCriteriaKey
        $AllProperties = ("type", "property", "sourceId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "property"))) {
            throw "Error! JSON cannot be serialized due to the required property 'property' missing."
        } else {
            $Property = $JsonParameters.PSobject.Properties["property"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "property" = ${Property}
            "sourceId" = ${SourceId}
        }

        return $PSO
    }

}
