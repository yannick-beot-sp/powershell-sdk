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

Workflow Trigger Attributes.

.PARAMETER Json

JSON object

.OUTPUTS

WorkflowTriggerAttributes<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowTriggerAttributes {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match EventAttributes defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToEventAttributes $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "EventAttributes"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'EventAttributes' defined in oneOf (WorkflowTriggerAttributes). Proceeding to the next one if any."
        }

        # try to match ExternalAttributes defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToExternalAttributes $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ExternalAttributes"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ExternalAttributes' defined in oneOf (WorkflowTriggerAttributes). Proceeding to the next one if any."
        }

        # try to match ScheduledAttributes defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToScheduledAttributes $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ScheduledAttributes"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ScheduledAttributes' defined in oneOf (WorkflowTriggerAttributes). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([EventAttributes, ExternalAttributes, ScheduledAttributes]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("EventAttributes", "ExternalAttributes", "ScheduledAttributes")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([EventAttributes, ExternalAttributes, ScheduledAttributes]). JSON Payload: $($Json)"
        }
    }
}

