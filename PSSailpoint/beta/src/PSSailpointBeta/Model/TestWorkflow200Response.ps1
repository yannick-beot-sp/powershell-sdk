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

.PARAMETER WorkflowExecutionId
The workflow execution id
.OUTPUTS

TestWorkflow200Response<PSCustomObject>
#>

function Initialize-BetaTestWorkflow200Response {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkflowExecutionId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTestWorkflow200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "workflowExecutionId" = ${WorkflowExecutionId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TestWorkflow200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to TestWorkflow200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TestWorkflow200Response<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTestWorkflow200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTestWorkflow200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTestWorkflow200Response
        $AllProperties = ("workflowExecutionId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflowExecutionId"))) { #optional property not found
            $WorkflowExecutionId = $null
        } else {
            $WorkflowExecutionId = $JsonParameters.PSobject.Properties["workflowExecutionId"].value
        }

        $PSO = [PSCustomObject]@{
            "workflowExecutionId" = ${WorkflowExecutionId}
        }

        return $PSO
    }

}

