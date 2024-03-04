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

Request model for peek resource objects from source connectors.

.PARAMETER ObjectType
The type of resource objects to iterate over.
.PARAMETER MaxCount
The maximum number of resource objects to iterate over and return.
.OUTPUTS

ResourceObjectsRequest<PSCustomObject>
#>

function Initialize-BetaResourceObjectsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType} = "account",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxCount} = 25
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaResourceObjectsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "objectType" = ${ObjectType}
            "maxCount" = ${MaxCount}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResourceObjectsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResourceObjectsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResourceObjectsRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToResourceObjectsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaResourceObjectsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaResourceObjectsRequest
        $AllProperties = ("objectType", "maxCount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectType"))) { #optional property not found
            $ObjectType = $null
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["objectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxCount"))) { #optional property not found
            $MaxCount = $null
        } else {
            $MaxCount = $JsonParameters.PSobject.Properties["maxCount"].value
        }

        $PSO = [PSCustomObject]@{
            "objectType" = ${ObjectType}
            "maxCount" = ${MaxCount}
        }

        return $PSO
    }

}

