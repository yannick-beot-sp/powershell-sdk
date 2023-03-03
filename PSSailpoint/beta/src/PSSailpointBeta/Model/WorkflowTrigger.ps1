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

The trigger that starts the workflow

.PARAMETER Type
The trigger type
.PARAMETER Attributes
No description available.
.OUTPUTS

WorkflowTrigger<PSCustomObject>
#>

function Initialize-BetaWorkflowTrigger {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EVENT", "EXTERNAL", "SCHEDULED")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaWorkflowTrigger' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "attributes" = ${Attributes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowTrigger<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowTrigger<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowTrigger<PSCustomObject>
#>
function ConvertFrom-BetaJsonToWorkflowTrigger {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaWorkflowTrigger' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaWorkflowTrigger
        $AllProperties = ("type", "attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}
