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

.PARAMETER BusinessName
The name of the business the API Client should belong to
.PARAMETER HomepageUrl
The homepage URL associated with the owner of the API Client
.PARAMETER Name
A human-readable name for the API Client
.PARAMETER Description
A description of the API Client
.PARAMETER AccessTokenValiditySeconds
The number of seconds an access token generated for this API Client is valid for
.PARAMETER RefreshTokenValiditySeconds
The number of seconds a refresh token generated for this API Client is valid for
.PARAMETER RedirectUris
A list of the approved redirect URIs. Provide one or more URIs when assigning the AUTHORIZATION_CODE grant type to a new OAuth Client.
.PARAMETER GrantTypes
A list of OAuth 2.0 grant types this API Client can be used with
.PARAMETER AccessType
No description available.
.PARAMETER Type
No description available.
.PARAMETER Internal
An indicator of whether the API Client can be used for requests internal within the product.
.PARAMETER Enabled
An indicator of whether the API Client is enabled for use
.PARAMETER StrongAuthSupported
An indicator of whether the API Client supports strong authentication
.PARAMETER ClaimsSupported
An indicator of whether the API Client supports the serialization of SAML claims when used with the authorization_code flow
.PARAMETER Scope
Scopes of the API Client. If no scope is specified, the client will be created with the default scope ""sp:scopes:all"". This means the API Client will have all the rights of the owner who created it.
.OUTPUTS

CreateOAuthClientRequest<PSCustomObject>
#>

function Initialize-CreateOAuthClientRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BusinessName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HomepageUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${AccessTokenValiditySeconds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${RefreshTokenValiditySeconds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RedirectUris},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${GrantTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ONLINE", "OFFLINE")]
        [PSCustomObject]
        ${AccessType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CONFIDENTIAL", "PUBLIC")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Internal},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Enabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${StrongAuthSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ClaimsSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Scope}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CreateOAuthClientRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccessTokenValiditySeconds) {
            throw "invalid value for 'AccessTokenValiditySeconds', 'AccessTokenValiditySeconds' cannot be null."
        }

        if (!$AccessType) {
            throw "invalid value for 'AccessType', 'AccessType' cannot be null."
        }

        if (!$Enabled) {
            throw "invalid value for 'Enabled', 'Enabled' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "businessName" = ${BusinessName}
            "homepageUrl" = ${HomepageUrl}
            "name" = ${Name}
            "description" = ${Description}
            "accessTokenValiditySeconds" = ${AccessTokenValiditySeconds}
            "refreshTokenValiditySeconds" = ${RefreshTokenValiditySeconds}
            "redirectUris" = ${RedirectUris}
            "grantTypes" = ${GrantTypes}
            "accessType" = ${AccessType}
            "type" = ${Type}
            "internal" = ${Internal}
            "enabled" = ${Enabled}
            "strongAuthSupported" = ${StrongAuthSupported}
            "claimsSupported" = ${ClaimsSupported}
            "scope" = ${Scope}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateOAuthClientRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateOAuthClientRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateOAuthClientRequest<PSCustomObject>
#>
function ConvertFrom-JsonToCreateOAuthClientRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CreateOAuthClientRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateOAuthClientRequest
        $AllProperties = ("businessName", "homepageUrl", "name", "description", "accessTokenValiditySeconds", "refreshTokenValiditySeconds", "redirectUris", "grantTypes", "accessType", "type", "internal", "enabled", "strongAuthSupported", "claimsSupported", "scope")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessTokenValiditySeconds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accessTokenValiditySeconds' missing."
        } else {
            $AccessTokenValiditySeconds = $JsonParameters.PSobject.Properties["accessTokenValiditySeconds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "grantTypes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'grantTypes' missing."
        } else {
            $GrantTypes = $JsonParameters.PSobject.Properties["grantTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accessType' missing."
        } else {
            $AccessType = $JsonParameters.PSobject.Properties["accessType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enabled' missing."
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "businessName"))) { #optional property not found
            $BusinessName = $null
        } else {
            $BusinessName = $JsonParameters.PSobject.Properties["businessName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "homepageUrl"))) { #optional property not found
            $HomepageUrl = $null
        } else {
            $HomepageUrl = $JsonParameters.PSobject.Properties["homepageUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "refreshTokenValiditySeconds"))) { #optional property not found
            $RefreshTokenValiditySeconds = $null
        } else {
            $RefreshTokenValiditySeconds = $JsonParameters.PSobject.Properties["refreshTokenValiditySeconds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "redirectUris"))) { #optional property not found
            $RedirectUris = $null
        } else {
            $RedirectUris = $JsonParameters.PSobject.Properties["redirectUris"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "internal"))) { #optional property not found
            $Internal = $null
        } else {
            $Internal = $JsonParameters.PSobject.Properties["internal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "strongAuthSupported"))) { #optional property not found
            $StrongAuthSupported = $null
        } else {
            $StrongAuthSupported = $JsonParameters.PSobject.Properties["strongAuthSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "claimsSupported"))) { #optional property not found
            $ClaimsSupported = $null
        } else {
            $ClaimsSupported = $JsonParameters.PSobject.Properties["claimsSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        $PSO = [PSCustomObject]@{
            "businessName" = ${BusinessName}
            "homepageUrl" = ${HomepageUrl}
            "name" = ${Name}
            "description" = ${Description}
            "accessTokenValiditySeconds" = ${AccessTokenValiditySeconds}
            "refreshTokenValiditySeconds" = ${RefreshTokenValiditySeconds}
            "redirectUris" = ${RedirectUris}
            "grantTypes" = ${GrantTypes}
            "accessType" = ${AccessType}
            "type" = ${Type}
            "internal" = ${Internal}
            "enabled" = ${Enabled}
            "strongAuthSupported" = ${StrongAuthSupported}
            "claimsSupported" = ${ClaimsSupported}
            "scope" = ${Scope}
        }

        return $PSO
    }

}

