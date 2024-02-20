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

Campaign Filter Details

.PARAMETER Id
Id of the campaign filter
.PARAMETER Name
This is campaign filter's name.
.PARAMETER Description
This is campaign filter's description.
.PARAMETER Owner
The owner of this filter. This field is automatically populated at creation time with the current user.
.PARAMETER Mode
The mode/type of Filter, where it is of INCLUSION or EXCLUSION type. INCLUSION type will include the data in generated campaign  as per specified in criteria, whereas EXCLUSION type will exclude the the data in generated campaign as per specified in criteria.
.PARAMETER CriteriaList
List of criteria.
.OUTPUTS

CampaignFilterDetails<PSCustomObject>
#>

function Initialize-CampaignFilterDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Owner},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INCLUSION", "EXCLUSION")]
        [PSCustomObject]
        ${Mode},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${CriteriaList}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CampaignFilterDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Mode) {
            throw "invalid value for 'Mode', 'Mode' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "mode" = ${Mode}
            "criteriaList" = ${CriteriaList}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignFilterDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignFilterDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignFilterDetails<PSCustomObject>
#>
function ConvertFrom-JsonToCampaignFilterDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CampaignFilterDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CampaignFilterDetails
        $AllProperties = ("id", "name", "description", "owner", "mode", "criteriaList")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mode"))) {
            throw "Error! JSON cannot be serialized due to the required property 'mode' missing."
        } else {
            $Mode = $JsonParameters.PSobject.Properties["mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "criteriaList"))) { #optional property not found
            $CriteriaList = $null
        } else {
            $CriteriaList = $JsonParameters.PSobject.Properties["criteriaList"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "mode" = ${Mode}
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }

}

