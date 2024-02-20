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

If the access request submitted event trigger is configured and this access request was intercepted by it, then this is the result of the trigger's decision to either approve or deny the request.

.PARAMETER Comment
The comment from the trigger
.PARAMETER Decision
No description available.
.PARAMETER Reviewer
The name of the approver
.PARAMETER Date
The date and time the trigger decided on the request
.OUTPUTS

CompletedApprovalPreApprovalTriggerResult<PSCustomObject>
#>

function Initialize-CompletedApprovalPreApprovalTriggerResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVED", "REJECTED")]
        [PSCustomObject]
        ${Decision},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reviewer},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Date}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CompletedApprovalPreApprovalTriggerResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "decision" = ${Decision}
            "reviewer" = ${Reviewer}
            "date" = ${Date}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CompletedApprovalPreApprovalTriggerResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to CompletedApprovalPreApprovalTriggerResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CompletedApprovalPreApprovalTriggerResult<PSCustomObject>
#>
function ConvertFrom-JsonToCompletedApprovalPreApprovalTriggerResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CompletedApprovalPreApprovalTriggerResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CompletedApprovalPreApprovalTriggerResult
        $AllProperties = ("comment", "decision", "reviewer", "date")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decision"))) { #optional property not found
            $Decision = $null
        } else {
            $Decision = $JsonParameters.PSobject.Properties["decision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewer"))) { #optional property not found
            $Reviewer = $null
        } else {
            $Reviewer = $JsonParameters.PSobject.Properties["reviewer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "decision" = ${Decision}
            "reviewer" = ${Reviewer}
            "date" = ${Date}
        }

        return $PSO
    }

}

