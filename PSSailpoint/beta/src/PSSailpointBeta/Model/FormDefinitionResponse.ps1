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

.PARAMETER Created
Created is the date the form definition was created
.PARAMETER Description
Description is the form definition description
.PARAMETER FormConditions
FormConditions is the conditional logic that modify the form dynamically modify the form as the recipient is interacting out the form
.PARAMETER FormElements
FormElements is a list of nested form elements
.PARAMETER FormInput
FormInput is a list of form inputs that are required when creating a form-instance object
.PARAMETER Id
FormDefinitionID is a unique guid identifying this form definition
.PARAMETER Modified
Modified is the last date the form definition was modified
.PARAMETER Name
Name is the form definition name
.PARAMETER Owner
No description available.
.PARAMETER UsedBy
UsedBy is a list of objects where when any system uses a particular form it reaches out to the form service to record it is currently being used
.OUTPUTS

FormDefinitionResponse<PSCustomObject>
#>

function Initialize-BetaFormDefinitionResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormConditions},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormElements},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormInput},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${UsedBy}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaFormDefinitionResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "description" = ${Description}
            "formConditions" = ${FormConditions}
            "formElements" = ${FormElements}
            "formInput" = ${FormInput}
            "id" = ${Id}
            "modified" = ${Modified}
            "name" = ${Name}
            "owner" = ${Owner}
            "usedBy" = ${UsedBy}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormDefinitionResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormDefinitionResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormDefinitionResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToFormDefinitionResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaFormDefinitionResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaFormDefinitionResponse
        $AllProperties = ("created", "description", "formConditions", "formElements", "formInput", "id", "modified", "name", "owner", "usedBy")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usedBy"))) { #optional property not found
            $UsedBy = $null
        } else {
            $UsedBy = $JsonParameters.PSobject.Properties["usedBy"].value
        }

        $PSO = [PSCustomObject]@{
            "created" = ${Created}
            "description" = ${Description}
            "formConditions" = ${FormConditions}
            "formElements" = ${FormElements}
            "formInput" = ${FormInput}
            "id" = ${Id}
            "modified" = ${Modified}
            "name" = ${Name}
            "owner" = ${Owner}
            "usedBy" = ${UsedBy}
        }

        return $PSO
    }

}
