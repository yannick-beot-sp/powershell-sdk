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

.PARAMETER Name
Name of the Object
.PARAMETER Type
The 'type' property specifies the type of the Service Desk integration template.
.PARAMETER Attributes
The 'attributes' property value is a map of attributes available for integrations using this Service Desk integration template.
.PARAMETER ProvisioningConfig
No description available.
.OUTPUTS

ServiceDeskIntegrationTemplateDto<PSCustomObject>
#>

function Initialize-ServiceDeskIntegrationTemplateDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type} = "Web Service SDIM",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProvisioningConfig}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ServiceDeskIntegrationTemplateDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }

        if (!$ProvisioningConfig) {
            throw "invalid value for 'ProvisioningConfig', 'ProvisioningConfig' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "provisioningConfig" = ${ProvisioningConfig}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ServiceDeskIntegrationTemplateDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ServiceDeskIntegrationTemplateDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ServiceDeskIntegrationTemplateDto<PSCustomObject>
#>
function ConvertFrom-JsonToServiceDeskIntegrationTemplateDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ServiceDeskIntegrationTemplateDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ServiceDeskIntegrationTemplateDto
        $AllProperties = ("id", "name", "created", "modified", "type", "attributes", "provisioningConfig")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningConfig"))) {
            throw "Error! JSON cannot be serialized due to the required property 'provisioningConfig' missing."
        } else {
            $ProvisioningConfig = $JsonParameters.PSobject.Properties["provisioningConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
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

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "provisioningConfig" = ${ProvisioningConfig}
        }

        return $PSO
    }

}

