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

.PARAMETER RecommenderFeatures
List of identity attributes to use for calculating certification recommendations
.PARAMETER PeerGroupPercentageThreshold
The percent value that the recommendation calculation must surpass to produce a YES recommendation
.PARAMETER ForceRefresh
If true, rulesRecommenderConfig will be refreshed with new programatically selected attribute and threshold values on the next pipeline run
.OUTPUTS

RecommendationConfigDto<PSCustomObject>
#>

function Initialize-BetaRecommendationConfigDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RecommenderFeatures},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${PeerGroupPercentageThreshold},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ForceRefresh}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRecommendationConfigDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($PeerGroupPercentageThreshold -and $PeerGroupPercentageThreshold -gt 1.0) {
          throw "invalid value for 'PeerGroupPercentageThreshold', must be smaller than or equal to 1.0."
        }

        if ($PeerGroupPercentageThreshold -and $PeerGroupPercentageThreshold -lt 0.0) {
          throw "invalid value for 'PeerGroupPercentageThreshold', must be greater than or equal to 0.0."
        }


        $PSO = [PSCustomObject]@{
            "recommenderFeatures" = ${RecommenderFeatures}
            "peerGroupPercentageThreshold" = ${PeerGroupPercentageThreshold}
            "forceRefresh" = ${ForceRefresh}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RecommendationConfigDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to RecommendationConfigDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RecommendationConfigDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRecommendationConfigDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRecommendationConfigDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRecommendationConfigDto
        $AllProperties = ("recommenderFeatures", "peerGroupPercentageThreshold", "forceRefresh")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recommenderFeatures"))) { #optional property not found
            $RecommenderFeatures = $null
        } else {
            $RecommenderFeatures = $JsonParameters.PSobject.Properties["recommenderFeatures"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "peerGroupPercentageThreshold"))) { #optional property not found
            $PeerGroupPercentageThreshold = $null
        } else {
            $PeerGroupPercentageThreshold = $JsonParameters.PSobject.Properties["peerGroupPercentageThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forceRefresh"))) { #optional property not found
            $ForceRefresh = $null
        } else {
            $ForceRefresh = $JsonParameters.PSobject.Properties["forceRefresh"].value
        }

        $PSO = [PSCustomObject]@{
            "recommenderFeatures" = ${RecommenderFeatures}
            "peerGroupPercentageThreshold" = ${PeerGroupPercentageThreshold}
            "forceRefresh" = ${ForceRefresh}
        }

        return $PSO
    }

}
