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

The schedule information.

.PARAMETER Type
No description available.
.PARAMETER Months
No description available.
.PARAMETER Days
No description available.
.PARAMETER Hours
No description available.
.PARAMETER Expiration
A date-time in ISO-8601 format
.PARAMETER TimeZoneId
The canonical TZ identifier the schedule will run in (ex. America/New_York).  If no timezone is specified, the org's default timezone is used.
.OUTPUTS

Schedule1<PSCustomObject>
#>

function Initialize-BetaSchedule1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DAILY", "WEEKLY", "MONTHLY", "CALENDAR", "ANNUALLY")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Months},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Days},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Hours},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Expiration},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZoneId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSchedule1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Hours) {
            throw "invalid value for 'Hours', 'Hours' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "months" = ${Months}
            "days" = ${Days}
            "hours" = ${Hours}
            "expiration" = ${Expiration}
            "timeZoneId" = ${TimeZoneId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Schedule1<PSCustomObject>

.DESCRIPTION

Convert from JSON to Schedule1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Schedule1<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSchedule1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSchedule1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSchedule1
        $AllProperties = ("type", "months", "days", "hours", "expiration", "timeZoneId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hours"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hours' missing."
        } else {
            $Hours = $JsonParameters.PSobject.Properties["hours"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "months"))) { #optional property not found
            $Months = $null
        } else {
            $Months = $JsonParameters.PSobject.Properties["months"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "days"))) { #optional property not found
            $Days = $null
        } else {
            $Days = $JsonParameters.PSobject.Properties["days"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiration"))) { #optional property not found
            $Expiration = $null
        } else {
            $Expiration = $JsonParameters.PSobject.Properties["expiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeZoneId"))) { #optional property not found
            $TimeZoneId = $null
        } else {
            $TimeZoneId = $JsonParameters.PSobject.Properties["timeZoneId"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "months" = ${Months}
            "days" = ${Days}
            "hours" = ${Hours}
            "expiration" = ${Expiration}
            "timeZoneId" = ${TimeZoneId}
        }

        return $PSO
    }

}

