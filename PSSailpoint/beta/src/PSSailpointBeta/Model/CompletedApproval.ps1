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
The approval id.
.PARAMETER Name
The name of the approval.
.PARAMETER Created
When the approval was created.
.PARAMETER Modified
When the approval was modified last time.
.PARAMETER RequestCreated
When the access-request was created.
.PARAMETER RequestType
No description available.
.PARAMETER Requester
No description available.
.PARAMETER RequestedFor
Identities access was requested for.
.PARAMETER ReviewedBy
No description available.
.PARAMETER Owner
No description available.
.PARAMETER RequestedObject
No description available.
.PARAMETER RequesterComment
No description available.
.PARAMETER ReviewerComment
No description available.
.PARAMETER PreviousReviewersComments
The history of the previous reviewers comments.
.PARAMETER ForwardHistory
The history of approval forward action.
.PARAMETER CommentRequiredWhenRejected
When true the rejector has to provide comments when rejecting
.PARAMETER State
No description available.
.PARAMETER RemoveDate
The date the role or access profile is no longer assigned to the specified identity.
.PARAMETER RemoveDateUpdateRequested
If true, then the request was to change the remove date or sunset date.
.PARAMETER CurrentRemoveDate
The remove date or sunset date that was assigned at the time of the request.
.PARAMETER SodViolationContext
No description available.
.PARAMETER PreApprovalTriggerResult
No description available.
.PARAMETER ClientMetadata
Arbitrary key-value pairs provided during the request.
.PARAMETER RequestedAccounts
No description available.
.OUTPUTS

CompletedApproval<PSCustomObject>
#>

function Initialize-BetaCompletedApproval {
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
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RequestCreated},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GRANT_ACCESS", "REVOKE_ACCESS", "")]
        [PSCustomObject]
        ${RequestType},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Requester},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RequestedFor},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ReviewedBy},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequestedObject},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequesterComment},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ReviewerComment},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PreviousReviewersComments},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ForwardHistory},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CommentRequiredWhenRejected} = $false,
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVED", "REJECTED")]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RemoveDate},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RemoveDateUpdateRequested} = $false,
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CurrentRemoveDate},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SodViolationContext},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PreApprovalTriggerResult},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ClientMetadata},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestedAccounts}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCompletedApproval' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$RequestedFor -and $RequestedFor.length -gt 10) {
            throw "invalid value for 'RequestedFor', number of items must be less than or equal to 10."
        }

        if (!$RequestedFor -and $RequestedFor.length -lt 1) {
            throw "invalid value for 'RequestedFor', number of items must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "requestCreated" = ${RequestCreated}
            "requestType" = ${RequestType}
            "requester" = ${Requester}
            "requestedFor" = ${RequestedFor}
            "reviewedBy" = ${ReviewedBy}
            "owner" = ${Owner}
            "requestedObject" = ${RequestedObject}
            "requesterComment" = ${RequesterComment}
            "reviewerComment" = ${ReviewerComment}
            "previousReviewersComments" = ${PreviousReviewersComments}
            "forwardHistory" = ${ForwardHistory}
            "commentRequiredWhenRejected" = ${CommentRequiredWhenRejected}
            "state" = ${State}
            "removeDate" = ${RemoveDate}
            "removeDateUpdateRequested" = ${RemoveDateUpdateRequested}
            "currentRemoveDate" = ${CurrentRemoveDate}
            "sodViolationContext" = ${SodViolationContext}
            "preApprovalTriggerResult" = ${PreApprovalTriggerResult}
            "clientMetadata" = ${ClientMetadata}
            "requestedAccounts" = ${RequestedAccounts}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CompletedApproval<PSCustomObject>

.DESCRIPTION

Convert from JSON to CompletedApproval<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CompletedApproval<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCompletedApproval {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCompletedApproval' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCompletedApproval
        $AllProperties = ("id", "name", "created", "modified", "requestCreated", "requestType", "requester", "requestedFor", "reviewedBy", "owner", "requestedObject", "requesterComment", "reviewerComment", "previousReviewersComments", "forwardHistory", "commentRequiredWhenRejected", "state", "removeDate", "removeDateUpdateRequested", "currentRemoveDate", "sodViolationContext", "preApprovalTriggerResult", "clientMetadata", "requestedAccounts")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestCreated"))) { #optional property not found
            $RequestCreated = $null
        } else {
            $RequestCreated = $JsonParameters.PSobject.Properties["requestCreated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestType"))) { #optional property not found
            $RequestType = $null
        } else {
            $RequestType = $JsonParameters.PSobject.Properties["requestType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requester"))) { #optional property not found
            $Requester = $null
        } else {
            $Requester = $JsonParameters.PSobject.Properties["requester"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedFor"))) { #optional property not found
            $RequestedFor = $null
        } else {
            $RequestedFor = $JsonParameters.PSobject.Properties["requestedFor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewedBy"))) { #optional property not found
            $ReviewedBy = $null
        } else {
            $ReviewedBy = $JsonParameters.PSobject.Properties["reviewedBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedObject"))) { #optional property not found
            $RequestedObject = $null
        } else {
            $RequestedObject = $JsonParameters.PSobject.Properties["requestedObject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterComment"))) { #optional property not found
            $RequesterComment = $null
        } else {
            $RequesterComment = $JsonParameters.PSobject.Properties["requesterComment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewerComment"))) { #optional property not found
            $ReviewerComment = $null
        } else {
            $ReviewerComment = $JsonParameters.PSobject.Properties["reviewerComment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "previousReviewersComments"))) { #optional property not found
            $PreviousReviewersComments = $null
        } else {
            $PreviousReviewersComments = $JsonParameters.PSobject.Properties["previousReviewersComments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forwardHistory"))) { #optional property not found
            $ForwardHistory = $null
        } else {
            $ForwardHistory = $JsonParameters.PSobject.Properties["forwardHistory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commentRequiredWhenRejected"))) { #optional property not found
            $CommentRequiredWhenRejected = $null
        } else {
            $CommentRequiredWhenRejected = $JsonParameters.PSobject.Properties["commentRequiredWhenRejected"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDate"))) { #optional property not found
            $RemoveDate = $null
        } else {
            $RemoveDate = $JsonParameters.PSobject.Properties["removeDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDateUpdateRequested"))) { #optional property not found
            $RemoveDateUpdateRequested = $null
        } else {
            $RemoveDateUpdateRequested = $JsonParameters.PSobject.Properties["removeDateUpdateRequested"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "currentRemoveDate"))) { #optional property not found
            $CurrentRemoveDate = $null
        } else {
            $CurrentRemoveDate = $JsonParameters.PSobject.Properties["currentRemoveDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sodViolationContext"))) { #optional property not found
            $SodViolationContext = $null
        } else {
            $SodViolationContext = $JsonParameters.PSobject.Properties["sodViolationContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "preApprovalTriggerResult"))) { #optional property not found
            $PreApprovalTriggerResult = $null
        } else {
            $PreApprovalTriggerResult = $JsonParameters.PSobject.Properties["preApprovalTriggerResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientMetadata"))) { #optional property not found
            $ClientMetadata = $null
        } else {
            $ClientMetadata = $JsonParameters.PSobject.Properties["clientMetadata"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedAccounts"))) { #optional property not found
            $RequestedAccounts = $null
        } else {
            $RequestedAccounts = $JsonParameters.PSobject.Properties["requestedAccounts"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "requestCreated" = ${RequestCreated}
            "requestType" = ${RequestType}
            "requester" = ${Requester}
            "requestedFor" = ${RequestedFor}
            "reviewedBy" = ${ReviewedBy}
            "owner" = ${Owner}
            "requestedObject" = ${RequestedObject}
            "requesterComment" = ${RequesterComment}
            "reviewerComment" = ${ReviewerComment}
            "previousReviewersComments" = ${PreviousReviewersComments}
            "forwardHistory" = ${ForwardHistory}
            "commentRequiredWhenRejected" = ${CommentRequiredWhenRejected}
            "state" = ${State}
            "removeDate" = ${RemoveDate}
            "removeDateUpdateRequested" = ${RemoveDateUpdateRequested}
            "currentRemoveDate" = ${CurrentRemoveDate}
            "sodViolationContext" = ${SodViolationContext}
            "preApprovalTriggerResult" = ${PreApprovalTriggerResult}
            "clientMetadata" = ${ClientMetadata}
            "requestedAccounts" = ${RequestedAccounts}
        }

        return $PSO
    }

}

