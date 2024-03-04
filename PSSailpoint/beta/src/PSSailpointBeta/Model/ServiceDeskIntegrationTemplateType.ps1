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

This represents a Service Desk Integration template type.

.PARAMETER Name
This is the name of the type.
.PARAMETER Type
This is the type value for the type.
.PARAMETER ScriptName
This is the scriptName attribute value for the type.
.OUTPUTS

ServiceDeskIntegrationTemplateType<PSCustomObject>
#>

function Initialize-BetaServiceDeskIntegrationTemplateType {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScriptName}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaServiceDeskIntegrationTemplateType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$ScriptName) {
            throw "invalid value for 'ScriptName', 'ScriptName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "scriptName" = ${ScriptName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ServiceDeskIntegrationTemplateType<PSCustomObject>

.DESCRIPTION

Convert from JSON to ServiceDeskIntegrationTemplateType<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ServiceDeskIntegrationTemplateType<PSCustomObject>
#>
function ConvertFrom-BetaJsonToServiceDeskIntegrationTemplateType {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaServiceDeskIntegrationTemplateType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaServiceDeskIntegrationTemplateType
        $AllProperties = ("name", "type", "scriptName")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scriptName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scriptName' missing."
        } else {
            $ScriptName = $JsonParameters.PSobject.Properties["scriptName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "scriptName" = ${ScriptName}
        }

        return $PSO
    }

}

