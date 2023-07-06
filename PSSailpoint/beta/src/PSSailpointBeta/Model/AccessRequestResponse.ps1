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

.PARAMETER RequesterId
the requester Id
.PARAMETER RequesterName
the requesterName
.PARAMETER Items
No description available.
.OUTPUTS

AccessRequestResponse<PSCustomObject>
#>

function Initialize-BetaAccessRequestResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequesterId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequesterName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessRequestResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "requesterId" = ${RequesterId}
            "requesterName" = ${RequesterName}
            "items" = ${Items}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessRequestResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessRequestResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessRequestResponse
        $AllProperties = ("requesterId", "requesterName", "items")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterId"))) { #optional property not found
            $RequesterId = $null
        } else {
            $RequesterId = $JsonParameters.PSobject.Properties["requesterId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterName"))) { #optional property not found
            $RequesterName = $null
        } else {
            $RequesterName = $JsonParameters.PSobject.Properties["requesterName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        $PSO = [PSCustomObject]@{
            "requesterId" = ${RequesterId}
            "requesterName" = ${RequesterName}
            "items" = ${Items}
        }

        return $PSO
    }

}
