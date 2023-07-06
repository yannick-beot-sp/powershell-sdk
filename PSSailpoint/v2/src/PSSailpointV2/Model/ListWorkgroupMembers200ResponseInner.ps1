#
# SailPoint SaaS API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 2.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Alias
No description available.
.PARAMETER Email
No description available.
.PARAMETER ExternalId
No description available.
.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.OUTPUTS

ListWorkgroupMembers200ResponseInner<PSCustomObject>
#>

function Initialize-V2ListWorkgroupMembers200ResponseInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Alias},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2 => V2ListWorkgroupMembers200ResponseInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "alias" = ${Alias}
            "email" = ${Email}
            "externalId" = ${ExternalId}
            "id" = ${Id}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListWorkgroupMembers200ResponseInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListWorkgroupMembers200ResponseInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListWorkgroupMembers200ResponseInner<PSCustomObject>
#>
function ConvertFrom-V2JsonToListWorkgroupMembers200ResponseInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2 => V2ListWorkgroupMembers200ResponseInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2ListWorkgroupMembers200ResponseInner
        $AllProperties = ("alias", "email", "externalId", "id", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alias"))) { #optional property not found
            $Alias = $null
        } else {
            $Alias = $JsonParameters.PSobject.Properties["alias"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "externalId"))) { #optional property not found
            $ExternalId = $null
        } else {
            $ExternalId = $JsonParameters.PSobject.Properties["externalId"].value
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
            "alias" = ${Alias}
            "email" = ${Email}
            "externalId" = ${ExternalId}
            "id" = ${Id}
            "name" = ${Name}
        }

        return $PSO
    }

}
