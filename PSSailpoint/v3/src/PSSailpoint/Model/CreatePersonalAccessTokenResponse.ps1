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
.PARAMETER Secret
The secret of the personal access token (to be used as the password for Basic Auth).
.PARAMETER Scope
Scopes of the personal  access token.
.PARAMETER Name
The name of the personal access token. Cannot be the same as other personal access tokens owned by a user.
.PARAMETER Owner
No description available.
.PARAMETER Created
The date and time, down to the millisecond, when this personal access token was created.
.OUTPUTS

CreatePersonalAccessTokenResponse<PSCustomObject>
#>

function Initialize-CreatePersonalAccessTokenResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Secret},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Scope},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CreatePersonalAccessTokenResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Secret) {
            throw "invalid value for 'Secret', 'Secret' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "secret" = ${Secret}
            "scope" = ${Scope}
            "name" = ${Name}
            "owner" = ${Owner}
            "created" = ${Created}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreatePersonalAccessTokenResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreatePersonalAccessTokenResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreatePersonalAccessTokenResponse<PSCustomObject>
#>
function ConvertFrom-JsonToCreatePersonalAccessTokenResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CreatePersonalAccessTokenResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreatePersonalAccessTokenResponse
        $AllProperties = ("id", "secret", "scope", "name", "owner", "created")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secret"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secret' missing."
        } else {
            $Secret = $JsonParameters.PSobject.Properties["secret"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scope' missing."
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "secret" = ${Secret}
            "scope" = ${Scope}
            "name" = ${Name}
            "owner" = ${Owner}
            "created" = ${Created}
        }

        return $PSO
    }

}

