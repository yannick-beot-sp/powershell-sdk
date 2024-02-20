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
The ID of the personal access token (to be used as the username for Basic Auth).
.PARAMETER Name
The name of the personal access token. Cannot be the same as other personal access tokens owned by a user.
.PARAMETER Scope
Scopes of the personal  access token.
.PARAMETER Owner
No description available.
.PARAMETER Created
The date and time, down to the millisecond, when this personal access token was created.
.PARAMETER LastUsed
The date and time, down to the millisecond, when this personal access token was last used to generate an access token. This timestamp does not get updated on every PAT usage, but only once a day. This property can be useful for identifying which PATs are no longer actively used and can be removed.
.PARAMETER Managed
If true, this token is managed by the SailPoint platform, and is not visible in the user interface. For example, Workflows will create managed personal access tokens for users who create workflows.
.OUTPUTS

GetPersonalAccessTokenResponse<PSCustomObject>
#>

function Initialize-GetPersonalAccessTokenResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Scope},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUsed},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Managed} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => GetPersonalAccessTokenResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }

        if ($null -eq $Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "scope" = ${Scope}
            "owner" = ${Owner}
            "created" = ${Created}
            "lastUsed" = ${LastUsed}
            "managed" = ${Managed}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GetPersonalAccessTokenResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to GetPersonalAccessTokenResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GetPersonalAccessTokenResponse<PSCustomObject>
#>
function ConvertFrom-JsonToGetPersonalAccessTokenResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => GetPersonalAccessTokenResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GetPersonalAccessTokenResponse
        $AllProperties = ("id", "name", "scope", "owner", "created", "lastUsed", "managed")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scope' missing."
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUsed"))) { #optional property not found
            $LastUsed = $null
        } else {
            $LastUsed = $JsonParameters.PSobject.Properties["lastUsed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managed"))) { #optional property not found
            $Managed = $null
        } else {
            $Managed = $JsonParameters.PSobject.Properties["managed"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "scope" = ${Scope}
            "owner" = ${Owner}
            "created" = ${Created}
            "lastUsed" = ${LastUsed}
            "managed" = ${Managed}
        }

        return $PSO
    }

}

