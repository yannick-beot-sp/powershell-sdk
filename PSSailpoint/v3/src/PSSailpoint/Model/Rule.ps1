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

.PARAMETER Json

JSON object

.OUTPUTS

Rule<PSCustomObject>
#>
function ConvertFrom-JsonToRule {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match GenerateRandomString defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToGenerateRandomString $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "GenerateRandomString"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'GenerateRandomString' defined in oneOf (Rule). Proceeding to the next one if any."
        }

        # try to match GenericRule defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToGenericRule $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "GenericRule"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'GenericRule' defined in oneOf (Rule). Proceeding to the next one if any."
        }

        # try to match GetReferenceIdentityAttribute defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToGetReferenceIdentityAttribute $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "GetReferenceIdentityAttribute"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'GetReferenceIdentityAttribute' defined in oneOf (Rule). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([GenerateRandomString, GenericRule, GetReferenceIdentityAttribute]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("GenerateRandomString", "GenericRule", "GetReferenceIdentityAttribute")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([GenerateRandomString, GenericRule, GetReferenceIdentityAttribute]). JSON Payload: $($Json)"
        }
    }
}
