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
Comment content.
.PARAMETER Created
Date and time comment was created.
.PARAMETER Author
No description available.
.OUTPUTS

RequestedItemStatusRequesterComment<PSCustomObject>
#>

function Initialize-BetaRequestedItemStatusRequesterComment {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRequestedItemStatusRequesterComment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "created" = ${Created}
            "author" = ${Author}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestedItemStatusRequesterComment<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestedItemStatusRequesterComment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestedItemStatusRequesterComment<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRequestedItemStatusRequesterComment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRequestedItemStatusRequesterComment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRequestedItemStatusRequesterComment
        $AllProperties = ("comment", "created", "author")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "author"))) { #optional property not found
            $Author = $null
        } else {
            $Author = $JsonParameters.PSobject.Properties["author"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "created" = ${Created}
            "author" = ${Author}
        }

        return $PSO
    }

}

