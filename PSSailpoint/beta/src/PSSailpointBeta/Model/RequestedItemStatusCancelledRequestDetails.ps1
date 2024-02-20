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

.PARAMETER Comment
Comment made by the owner when cancelling the associated request.
.PARAMETER Owner
No description available.
.PARAMETER Modified
Date comment was added by the owner when cancelling the associated request.
.OUTPUTS

RequestedItemStatusCancelledRequestDetails<PSCustomObject>
#>

function Initialize-BetaRequestedItemStatusCancelledRequestDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRequestedItemStatusCancelledRequestDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "owner" = ${Owner}
            "modified" = ${Modified}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestedItemStatusCancelledRequestDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestedItemStatusCancelledRequestDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestedItemStatusCancelledRequestDetails<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRequestedItemStatusCancelledRequestDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRequestedItemStatusCancelledRequestDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRequestedItemStatusCancelledRequestDetails
        $AllProperties = ("comment", "owner", "modified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "owner" = ${Owner}
            "modified" = ${Modified}
        }

        return $PSO
    }

}

