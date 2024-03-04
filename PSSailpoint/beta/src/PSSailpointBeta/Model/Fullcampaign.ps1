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

.PARAMETER Name
The campaign name. If this object is part of a template, special formatting applies; see the `/campaign-templates/{id}/generate` endpoint documentation for details.
.PARAMETER Description
The campaign description. If this object is part of a template, special formatting applies; see the `/campaign-templates/{id}/generate` endpoint documentation for details.
.PARAMETER Deadline
The campaign's completion deadline.  This date must be in the future in order to activate the campaign.  If you try to activate a campaign with a deadline of today or in the past, you will receive a 400 error response.
.PARAMETER Type
The type of campaign. Could be extended in the future.
.PARAMETER EmailNotificationEnabled
Enables email notification for this campaign
.PARAMETER AutoRevokeAllowed
Allows auto revoke for this campaign
.PARAMETER RecommendationsEnabled
Enables IAI for this campaign. Accepts true even if the IAI product feature is off. If IAI is turned off then campaigns generated from this template will indicate false. The real value will then be returned if IAI is ever enabled for the org in the future.
.PARAMETER CorrelatedStatus
The correlatedStatus of the campaign. Only SOURCE_OWNER campaigns can be Uncorrelated. An Uncorrelated certification campaign only includes Uncorrelated identities (An identity is uncorrelated if it has no accounts on an authoritative source).
.PARAMETER VarFilter
No description available.
.PARAMETER SunsetCommentsRequired
Determines if comments on sunset date changes are required.
.PARAMETER SourceOwnerCampaignInfo
No description available.
.PARAMETER SearchCampaignInfo
No description available.
.PARAMETER RoleCompositionCampaignInfo
No description available.
.PARAMETER MandatoryCommentRequirement
Determines whether comments are required for decisions during certification reviews. You can require comments for all decisions, revoke-only decisions, or no decisions. By default, comments are not required for decisions.
.OUTPUTS

Fullcampaign<PSCustomObject>
#>

function Initialize-BetaFullcampaign {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Deadline},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MANAGER", "SOURCE_OWNER", "SEARCH", "ROLE_COMPOSITION")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EmailNotificationEnabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AutoRevokeAllowed} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RecommendationsEnabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CORRELATED", "UNCORRELATED")]
        [PSCustomObject]
        ${CorrelatedStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarFilter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SunsetCommentsRequired} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SourceOwnerCampaignInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SearchCampaignInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RoleCompositionCampaignInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ALL_DECISIONS", "REVOKE_ONLY_DECISIONS", "NO_DECISIONS")]
        [String]
        ${MandatoryCommentRequirement}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaFullcampaign' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "deadline" = ${Deadline}
            "type" = ${Type}
            "emailNotificationEnabled" = ${EmailNotificationEnabled}
            "autoRevokeAllowed" = ${AutoRevokeAllowed}
            "recommendationsEnabled" = ${RecommendationsEnabled}
            "correlatedStatus" = ${CorrelatedStatus}
            "filter" = ${VarFilter}
            "sunsetCommentsRequired" = ${SunsetCommentsRequired}
            "sourceOwnerCampaignInfo" = ${SourceOwnerCampaignInfo}
            "searchCampaignInfo" = ${SearchCampaignInfo}
            "roleCompositionCampaignInfo" = ${RoleCompositionCampaignInfo}
            "mandatoryCommentRequirement" = ${MandatoryCommentRequirement}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Fullcampaign<PSCustomObject>

.DESCRIPTION

Convert from JSON to Fullcampaign<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Fullcampaign<PSCustomObject>
#>
function ConvertFrom-BetaJsonToFullcampaign {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaFullcampaign' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaFullcampaign
        $AllProperties = ("id", "name", "description", "deadline", "type", "emailNotificationEnabled", "autoRevokeAllowed", "recommendationsEnabled", "status", "correlatedStatus", "created", "totalCertifications", "completedCertifications", "alerts", "modified", "filter", "sunsetCommentsRequired", "sourceOwnerCampaignInfo", "searchCampaignInfo", "roleCompositionCampaignInfo", "sourcesWithOrphanEntitlements", "mandatoryCommentRequirement")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deadline"))) { #optional property not found
            $Deadline = $null
        } else {
            $Deadline = $JsonParameters.PSobject.Properties["deadline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailNotificationEnabled"))) { #optional property not found
            $EmailNotificationEnabled = $null
        } else {
            $EmailNotificationEnabled = $JsonParameters.PSobject.Properties["emailNotificationEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "autoRevokeAllowed"))) { #optional property not found
            $AutoRevokeAllowed = $null
        } else {
            $AutoRevokeAllowed = $JsonParameters.PSobject.Properties["autoRevokeAllowed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recommendationsEnabled"))) { #optional property not found
            $RecommendationsEnabled = $null
        } else {
            $RecommendationsEnabled = $JsonParameters.PSobject.Properties["recommendationsEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "correlatedStatus"))) { #optional property not found
            $CorrelatedStatus = $null
        } else {
            $CorrelatedStatus = $JsonParameters.PSobject.Properties["correlatedStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalCertifications"))) { #optional property not found
            $TotalCertifications = $null
        } else {
            $TotalCertifications = $JsonParameters.PSobject.Properties["totalCertifications"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completedCertifications"))) { #optional property not found
            $CompletedCertifications = $null
        } else {
            $CompletedCertifications = $JsonParameters.PSobject.Properties["completedCertifications"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alerts"))) { #optional property not found
            $Alerts = $null
        } else {
            $Alerts = $JsonParameters.PSobject.Properties["alerts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sunsetCommentsRequired"))) { #optional property not found
            $SunsetCommentsRequired = $null
        } else {
            $SunsetCommentsRequired = $JsonParameters.PSobject.Properties["sunsetCommentsRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceOwnerCampaignInfo"))) { #optional property not found
            $SourceOwnerCampaignInfo = $null
        } else {
            $SourceOwnerCampaignInfo = $JsonParameters.PSobject.Properties["sourceOwnerCampaignInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searchCampaignInfo"))) { #optional property not found
            $SearchCampaignInfo = $null
        } else {
            $SearchCampaignInfo = $JsonParameters.PSobject.Properties["searchCampaignInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleCompositionCampaignInfo"))) { #optional property not found
            $RoleCompositionCampaignInfo = $null
        } else {
            $RoleCompositionCampaignInfo = $JsonParameters.PSobject.Properties["roleCompositionCampaignInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourcesWithOrphanEntitlements"))) { #optional property not found
            $SourcesWithOrphanEntitlements = $null
        } else {
            $SourcesWithOrphanEntitlements = $JsonParameters.PSobject.Properties["sourcesWithOrphanEntitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mandatoryCommentRequirement"))) { #optional property not found
            $MandatoryCommentRequirement = $null
        } else {
            $MandatoryCommentRequirement = $JsonParameters.PSobject.Properties["mandatoryCommentRequirement"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "deadline" = ${Deadline}
            "type" = ${Type}
            "emailNotificationEnabled" = ${EmailNotificationEnabled}
            "autoRevokeAllowed" = ${AutoRevokeAllowed}
            "recommendationsEnabled" = ${RecommendationsEnabled}
            "status" = ${Status}
            "correlatedStatus" = ${CorrelatedStatus}
            "created" = ${Created}
            "totalCertifications" = ${TotalCertifications}
            "completedCertifications" = ${CompletedCertifications}
            "alerts" = ${Alerts}
            "modified" = ${Modified}
            "filter" = ${VarFilter}
            "sunsetCommentsRequired" = ${SunsetCommentsRequired}
            "sourceOwnerCampaignInfo" = ${SourceOwnerCampaignInfo}
            "searchCampaignInfo" = ${SearchCampaignInfo}
            "roleCompositionCampaignInfo" = ${RoleCompositionCampaignInfo}
            "sourcesWithOrphanEntitlements" = ${SourcesWithOrphanEntitlements}
            "mandatoryCommentRequirement" = ${MandatoryCommentRequirement}
        }

        return $PSO
    }

}

