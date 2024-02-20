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
Item id
.PARAMETER Name
Human-readable display name of item
.PARAMETER Requested
Date and time item was requested
.PARAMETER ApprovalStatus
No description available.
.PARAMETER ProvisioningStatus
No description available.
.PARAMETER RequesterComment
No description available.
.PARAMETER ReviewerIdentitySummary
No description available.
.PARAMETER ReviewerComment
No description available.
.PARAMETER Operation
No description available.
.PARAMETER Attribute
Attribute to which account activity applies
.PARAMETER Value
Value of attribute
.PARAMETER NativeIdentity
Native identity in the target system to which the account activity applies
.PARAMETER SourceId
Id of Source to which account activity applies
.PARAMETER AccountRequestInfo
No description available.
.PARAMETER ClientMetadata
Arbitrary key-value pairs, if any were included in the corresponding access request item
.PARAMETER RemoveDate
The date the role or access profile is no longer assigned to the specified identity.
.OUTPUTS

AccountActivityItem<PSCustomObject>
#>

function Initialize-BetaAccountActivityItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Requested},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApprovalStatus},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PENDING", "FINISHED", "UNVERIFIABLE", "COMMITED", "FAILED", "RETRY")]
        [PSCustomObject]
        ${ProvisioningStatus},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequesterComment},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ReviewerIdentitySummary},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ReviewerComment},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Operation},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentity},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccountRequestInfo},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ClientMetadata},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RemoveDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccountActivityItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "requested" = ${Requested}
            "approvalStatus" = ${ApprovalStatus}
            "provisioningStatus" = ${ProvisioningStatus}
            "requesterComment" = ${RequesterComment}
            "reviewerIdentitySummary" = ${ReviewerIdentitySummary}
            "reviewerComment" = ${ReviewerComment}
            "operation" = ${Operation}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "nativeIdentity" = ${NativeIdentity}
            "sourceId" = ${SourceId}
            "accountRequestInfo" = ${AccountRequestInfo}
            "clientMetadata" = ${ClientMetadata}
            "removeDate" = ${RemoveDate}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountActivityItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountActivityItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountActivityItem<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountActivityItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccountActivityItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccountActivityItem
        $AllProperties = ("id", "name", "requested", "approvalStatus", "provisioningStatus", "requesterComment", "reviewerIdentitySummary", "reviewerComment", "operation", "attribute", "value", "nativeIdentity", "sourceId", "accountRequestInfo", "clientMetadata", "removeDate")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requested"))) { #optional property not found
            $Requested = $null
        } else {
            $Requested = $JsonParameters.PSobject.Properties["requested"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalStatus"))) { #optional property not found
            $ApprovalStatus = $null
        } else {
            $ApprovalStatus = $JsonParameters.PSobject.Properties["approvalStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningStatus"))) { #optional property not found
            $ProvisioningStatus = $null
        } else {
            $ProvisioningStatus = $JsonParameters.PSobject.Properties["provisioningStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterComment"))) { #optional property not found
            $RequesterComment = $null
        } else {
            $RequesterComment = $JsonParameters.PSobject.Properties["requesterComment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewerIdentitySummary"))) { #optional property not found
            $ReviewerIdentitySummary = $null
        } else {
            $ReviewerIdentitySummary = $JsonParameters.PSobject.Properties["reviewerIdentitySummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewerComment"))) { #optional property not found
            $ReviewerComment = $null
        } else {
            $ReviewerComment = $JsonParameters.PSobject.Properties["reviewerComment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) { #optional property not found
            $NativeIdentity = $null
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountRequestInfo"))) { #optional property not found
            $AccountRequestInfo = $null
        } else {
            $AccountRequestInfo = $JsonParameters.PSobject.Properties["accountRequestInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientMetadata"))) { #optional property not found
            $ClientMetadata = $null
        } else {
            $ClientMetadata = $JsonParameters.PSobject.Properties["clientMetadata"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDate"))) { #optional property not found
            $RemoveDate = $null
        } else {
            $RemoveDate = $JsonParameters.PSobject.Properties["removeDate"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "requested" = ${Requested}
            "approvalStatus" = ${ApprovalStatus}
            "provisioningStatus" = ${ProvisioningStatus}
            "requesterComment" = ${RequesterComment}
            "reviewerIdentitySummary" = ${ReviewerIdentitySummary}
            "reviewerComment" = ${ReviewerComment}
            "operation" = ${Operation}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "nativeIdentity" = ${NativeIdentity}
            "sourceId" = ${SourceId}
            "accountRequestInfo" = ${AccountRequestInfo}
            "clientMetadata" = ${ClientMetadata}
            "removeDate" = ${RemoveDate}
        }

        return $PSO
    }

}

