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

.PARAMETER Description
Description is the form definition description
.PARAMETER FormConditions
FormConditions is the conditional logic that modify the form dynamically modify the form as the recipient is interacting out the form
.PARAMETER FormElements
FormElements is a list of nested form elements
.PARAMETER FormInput
FormInput is a list of form inputs that are required when creating a form-instance object
.PARAMETER Name
Name is the form definition name
.PARAMETER Owner
No description available.
.PARAMETER UsedBy
UsedBy is a list of objects where when any system uses a particular form it reaches out to the form service to record it is currently being used
.OUTPUTS

CreateFormDefinitionRequest<PSCustomObject>
#>

function Initialize-BetaCreateFormDefinitionRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormConditions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormElements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${UsedBy}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCreateFormDefinitionRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Description -and $Description.length -gt 2000) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 2000."
        }

        if (!$Description -and $Description.length -lt 0) {
            throw "invalid value for 'Description', the character length must be great than or equal to 0."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 255) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 255."
        }

        if (!$Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "formConditions" = ${FormConditions}
            "formElements" = ${FormElements}
            "formInput" = ${FormInput}
            "name" = ${Name}
            "owner" = ${Owner}
            "usedBy" = ${UsedBy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateFormDefinitionRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateFormDefinitionRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateFormDefinitionRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCreateFormDefinitionRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCreateFormDefinitionRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCreateFormDefinitionRequest
        $AllProperties = ("description", "formConditions", "formElements", "formInput", "name", "owner", "usedBy")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formConditions"))) { #optional property not found
            $FormConditions = $null
        } else {
            $FormConditions = $JsonParameters.PSobject.Properties["formConditions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formElements"))) { #optional property not found
            $FormElements = $null
        } else {
            $FormElements = $JsonParameters.PSobject.Properties["formElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formInput"))) { #optional property not found
            $FormInput = $null
        } else {
            $FormInput = $JsonParameters.PSobject.Properties["formInput"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usedBy"))) { #optional property not found
            $UsedBy = $null
        } else {
            $UsedBy = $JsonParameters.PSobject.Properties["usedBy"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "formConditions" = ${FormConditions}
            "formElements" = ${FormElements}
            "formInput" = ${FormInput}
            "name" = ${Name}
            "owner" = ${Owner}
            "usedBy" = ${UsedBy}
        }

        return $PSO
    }

}

