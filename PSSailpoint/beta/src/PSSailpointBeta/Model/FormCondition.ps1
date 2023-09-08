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

FormCondition represent a form conditional

.PARAMETER Effects
Effects is a list of effects
.PARAMETER RuleOperator
RuleOperator is a ConditionRuleLogicalOperatorType value AND ConditionRuleLogicalOperatorTypeAnd OR ConditionRuleLogicalOperatorTypeOr
.PARAMETER Rules
Rules is a list of rules
.OUTPUTS

FormCondition<PSCustomObject>
#>

function Initialize-BetaFormCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Effects},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("AND", "OR")]
        [String]
        ${RuleOperator},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Rules}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaFormCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "effects" = ${Effects}
            "ruleOperator" = ${RuleOperator}
            "rules" = ${Rules}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormCondition<PSCustomObject>
#>
function ConvertFrom-BetaJsonToFormCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaFormCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaFormCondition
        $AllProperties = ("effects", "ruleOperator", "rules")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "effects"))) { #optional property not found
            $Effects = $null
        } else {
            $Effects = $JsonParameters.PSobject.Properties["effects"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ruleOperator"))) { #optional property not found
            $RuleOperator = $null
        } else {
            $RuleOperator = $JsonParameters.PSobject.Properties["ruleOperator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rules"))) { #optional property not found
            $Rules = $null
        } else {
            $Rules = $JsonParameters.PSobject.Properties["rules"].value
        }

        $PSO = [PSCustomObject]@{
            "effects" = ${Effects}
            "ruleOperator" = ${RuleOperator}
            "rules" = ${Rules}
        }

        return $PSO
    }

}
