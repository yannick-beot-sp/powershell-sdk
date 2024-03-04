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
The ID of the certification task.
.PARAMETER Type
The type of the certification task. More values may be added in the future.
.PARAMETER TargetType
The type of item that is being operated on by this task whose ID is stored in the targetId field.
.PARAMETER TargetId
The ID of the item being operated on by this task.
.PARAMETER Status
The status of the task.
.PARAMETER Errors
No description available.
.PARAMETER Created
The date and time on which this task was created.
.OUTPUTS

CertificationTask<PSCustomObject>
#>

function Initialize-BetaCertificationTask {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("REASSIGN", "ADMIN_REASSIGN", "COMPLETE_CERTIFICATION", "FINISH_CERTIFICATION", "COMPLETE_CAMPAIGN", "ACTIVATE_CAMPAIGN", "CAMPAIGN_CREATE", "CAMPAIGN_DELETE")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CERTIFICATION", "CAMPAIGN")]
        [String]
        ${TargetType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TargetId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("QUEUED", "IN_PROGRESS", "SUCCESS", "ERROR")]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Errors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCertificationTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "targetType" = ${TargetType}
            "targetId" = ${TargetId}
            "status" = ${Status}
            "errors" = ${Errors}
            "created" = ${Created}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CertificationTask<PSCustomObject>

.DESCRIPTION

Convert from JSON to CertificationTask<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CertificationTask<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCertificationTask {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCertificationTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCertificationTask
        $AllProperties = ("id", "type", "targetType", "targetId", "status", "errors", "created")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetType"))) { #optional property not found
            $TargetType = $null
        } else {
            $TargetType = $JsonParameters.PSobject.Properties["targetType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetId"))) { #optional property not found
            $TargetId = $null
        } else {
            $TargetId = $JsonParameters.PSobject.Properties["targetId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "targetType" = ${TargetType}
            "targetId" = ${TargetId}
            "status" = ${Status}
            "errors" = ${Errors}
            "created" = ${Created}
        }

        return $PSO
    }

}

