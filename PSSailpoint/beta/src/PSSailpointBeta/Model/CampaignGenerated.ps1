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

.PARAMETER Campaign
No description available.
.OUTPUTS

CampaignGenerated<PSCustomObject>
#>

function Initialize-BetaCampaignGenerated {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Campaign}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCampaignGenerated' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Campaign) {
            throw "invalid value for 'Campaign', 'Campaign' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "campaign" = ${Campaign}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignGenerated<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignGenerated<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignGenerated<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCampaignGenerated {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCampaignGenerated' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCampaignGenerated
        $AllProperties = ("campaign")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'campaign' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "campaign"))) {
            throw "Error! JSON cannot be serialized due to the required property 'campaign' missing."
        } else {
            $Campaign = $JsonParameters.PSobject.Properties["campaign"].value
        }

        $PSO = [PSCustomObject]@{
            "campaign" = ${Campaign}
        }

        return $PSO
    }

}

