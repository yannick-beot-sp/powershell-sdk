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

No description available.

.PARAMETER Date
The first day of the month for which activity is aggregated.
.PARAMETER Count
The average number of days that accounts were active within this source, for the month.
.OUTPUTS

SourceUsage<PSCustomObject>
#>

function Initialize-SourceUsage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Date},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Count}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SourceUsage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "date" = ${Date}
            "count" = ${Count}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceUsage<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceUsage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceUsage<PSCustomObject>
#>
function ConvertFrom-JsonToSourceUsage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SourceUsage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SourceUsage
        $AllProperties = ("date", "count")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        $PSO = [PSCustomObject]@{
            "date" = ${Date}
            "count" = ${Count}
        }

        return $PSO
    }

}

