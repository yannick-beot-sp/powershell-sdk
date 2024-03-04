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

.PARAMETER Id
Identifier of identity in bulk member add request.
.PARAMETER Status
 The HTTP response status code returned for an individual member that is requested for addition during a bulk add operation.   The HTTP response status code returned for an individual Governance Group is requested for deletion.   > 201   - Identity is added into Governance Group members list.  > 409   - Identity is already member of  Governance Group. 
.PARAMETER Description
Human readable status description and containing additional context information about success or failures etc. 
.OUTPUTS

WorkgroupMemberAddItem<PSCustomObject>
#>

function Initialize-BetaWorkgroupMemberAddItem {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaWorkgroupMemberAddItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "status" = ${Status}
            "description" = ${Description}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkgroupMemberAddItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkgroupMemberAddItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkgroupMemberAddItem<PSCustomObject>
#>
function ConvertFrom-BetaJsonToWorkgroupMemberAddItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaWorkgroupMemberAddItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaWorkgroupMemberAddItem
        $AllProperties = ("id", "status", "description")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "status" = ${Status}
            "description" = ${Description}
        }

        return $PSO
    }

}

