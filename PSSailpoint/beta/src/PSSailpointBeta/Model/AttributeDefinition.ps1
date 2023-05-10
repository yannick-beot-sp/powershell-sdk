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

.PARAMETER Name
The name of the attribute.
.PARAMETER Type
No description available.
.PARAMETER Schema
No description available.
.PARAMETER Description
A human-readable description of the attribute.
.PARAMETER IsMulti
Flag indicating whether or not the attribute is multi-valued.
.PARAMETER IsEntitlement
Flag indicating whether or not the attribute is an entitlement.
.PARAMETER IsGroup
Flag indicating whether or not the attribute represents a group. This can only be `true` if `isEntitlement` is also `true` **and** there is a schema defined for the attribute.. 
.OUTPUTS

AttributeDefinition<PSCustomObject>
#>

function Initialize-BetaAttributeDefinition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STRING", "LONG", "INT", "BOOLEAN")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Schema},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsMulti},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsEntitlement},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsGroup}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAttributeDefinition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "schema" = ${Schema}
            "description" = ${Description}
            "isMulti" = ${IsMulti}
            "isEntitlement" = ${IsEntitlement}
            "isGroup" = ${IsGroup}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttributeDefinition<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttributeDefinition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttributeDefinition<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAttributeDefinition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAttributeDefinition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAttributeDefinition
        $AllProperties = ("name", "type", "schema", "description", "isMulti", "isEntitlement", "isGroup")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "schema"))) { #optional property not found
            $Schema = $null
        } else {
            $Schema = $JsonParameters.PSobject.Properties["schema"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isMulti"))) { #optional property not found
            $IsMulti = $null
        } else {
            $IsMulti = $JsonParameters.PSobject.Properties["isMulti"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEntitlement"))) { #optional property not found
            $IsEntitlement = $null
        } else {
            $IsEntitlement = $JsonParameters.PSobject.Properties["isEntitlement"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isGroup"))) { #optional property not found
            $IsGroup = $null
        } else {
            $IsGroup = $JsonParameters.PSobject.Properties["isGroup"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "schema" = ${Schema}
            "description" = ${Description}
            "isMulti" = ${IsMulti}
            "isEntitlement" = ${IsEntitlement}
            "isGroup" = ${IsGroup}
        }

        return $PSO
    }

}
