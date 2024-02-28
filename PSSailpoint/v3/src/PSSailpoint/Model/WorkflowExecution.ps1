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

No description available.

.PARAMETER Id
The workflow execution ID
.PARAMETER WorkflowId
The workflow ID
.PARAMETER RequestId
This backend ID tracks a workflow request in the system. You can provide this ID in a customer support ticket for debugging purposes.
.PARAMETER StartTime
The date/time the workflow started
.PARAMETER CloseTime
The date/time the workflow ended
.PARAMETER Status
The workflow execution status
.OUTPUTS

WorkflowExecution<PSCustomObject>
#>

function Initialize-WorkflowExecution {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkflowId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StartTime},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CloseTime},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Completed", "Failed", "Canceled", "Running")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => WorkflowExecution' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "workflowId" = ${WorkflowId}
            "requestId" = ${RequestId}
            "startTime" = ${StartTime}
            "closeTime" = ${CloseTime}
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowExecution<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowExecution<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowExecution<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowExecution {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => WorkflowExecution' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowExecution
        $AllProperties = ("id", "workflowId", "requestId", "startTime", "closeTime", "status")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflowId"))) { #optional property not found
            $WorkflowId = $null
        } else {
            $WorkflowId = $JsonParameters.PSobject.Properties["workflowId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestId"))) { #optional property not found
            $RequestId = $null
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["requestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startTime"))) { #optional property not found
            $StartTime = $null
        } else {
            $StartTime = $JsonParameters.PSobject.Properties["startTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "closeTime"))) { #optional property not found
            $CloseTime = $null
        } else {
            $CloseTime = $JsonParameters.PSobject.Properties["closeTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "workflowId" = ${WorkflowId}
            "requestId" = ${RequestId}
            "startTime" = ${StartTime}
            "closeTime" = ${CloseTime}
            "status" = ${Status}
        }

        return $PSO
    }

}

