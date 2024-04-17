#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Name
Abbreviated name of the Tenant
.PARAMETER FullName
Human-readable name of the Tenant
.PARAMETER Pod
Deployment pod for the Tenant
.PARAMETER Region
Deployment region for the Tenant
.PARAMETER Description
Description of the Tenant
.PARAMETER Products
No description available.
.OUTPUTS

Tenant<PSCustomObject>
#>

function Initialize-BetaTenant {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FullName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pod},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Region},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Products}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTenant' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "fullName" = ${FullName}
            "pod" = ${Pod}
            "region" = ${Region}
            "description" = ${Description}
            "products" = ${Products}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Tenant<PSCustomObject>

.DESCRIPTION

Convert from JSON to Tenant<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Tenant<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTenant {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTenant' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTenant
        $AllProperties = ("id", "name", "fullName", "pod", "region", "description", "products")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fullName"))) { #optional property not found
            $FullName = $null
        } else {
            $FullName = $JsonParameters.PSobject.Properties["fullName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pod"))) { #optional property not found
            $Pod = $null
        } else {
            $Pod = $JsonParameters.PSobject.Properties["pod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "region"))) { #optional property not found
            $Region = $null
        } else {
            $Region = $JsonParameters.PSobject.Properties["region"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "products"))) { #optional property not found
            $Products = $null
        } else {
            $Products = $JsonParameters.PSobject.Properties["products"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "fullName" = ${FullName}
            "pod" = ${Pod}
            "region" = ${Region}
            "description" = ${Description}
            "products" = ${Products}
        }

        return $PSO
    }

}
