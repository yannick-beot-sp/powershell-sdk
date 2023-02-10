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

Account

.PARAMETER Id
The unique ID of the referenced object.
.PARAMETER Name
The human readable name of the referenced object.
.PARAMETER Type
No description available.
.PARAMETER AccountId
The ID of the account
.PARAMETER Source
No description available.
.PARAMETER Disabled
Indicates if the account is disabled
.PARAMETER Locked
Indicates if the account is locked
.PARAMETER Privileged
No description available.
.PARAMETER ManuallyCorrelated
Indicates if the account has been manually correlated to an identity
.PARAMETER PasswordLastSet
A date-time in ISO-8601 format
.PARAMETER EntitlementAttributes
a map or dictionary of key/value pairs
.PARAMETER Created
A date-time in ISO-8601 format
.PARAMETER Modified
A date-time in ISO-8601 format
.PARAMETER Attributes
a map or dictionary of key/value pairs
.PARAMETER Identity
No description available.
.PARAMETER Access
No description available.
.PARAMETER EntitlementCount
The number of entitlements assigned to the account
.PARAMETER Uncorrelated
Indicates if the account is not correlated to an identity
.PARAMETER Tags
No description available.
.OUTPUTS

AccountDocument<PSCustomObject>
#>

function Initialize-AccountDocument {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Disabled},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Locked},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Privileged},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ManuallyCorrelated},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${PasswordLastSet},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${EntitlementAttributes},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Identity},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Access},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementCount},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Uncorrelated},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => AccountDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
            "accountId" = ${AccountId}
            "source" = ${Source}
            "disabled" = ${Disabled}
            "locked" = ${Locked}
            "privileged" = ${Privileged}
            "manuallyCorrelated" = ${ManuallyCorrelated}
            "passwordLastSet" = ${PasswordLastSet}
            "entitlementAttributes" = ${EntitlementAttributes}
            "created" = ${Created}
            "modified" = ${Modified}
            "attributes" = ${Attributes}
            "identity" = ${Identity}
            "access" = ${Access}
            "entitlementCount" = ${EntitlementCount}
            "uncorrelated" = ${Uncorrelated}
            "tags" = ${Tags}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountDocument<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountDocument<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountDocument<PSCustomObject>
#>
function ConvertFrom-JsonToAccountDocument {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => AccountDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AccountDocument
        $AllProperties = ("id", "name", "_type", "accountId", "source", "disabled", "locked", "privileged", "manuallyCorrelated", "passwordLastSet", "entitlementAttributes", "created", "modified", "attributes", "identity", "access", "entitlementCount", "uncorrelated", "tags")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_type"))) {
            throw "Error! JSON cannot be serialized due to the required property '_type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) { #optional property not found
            $Disabled = $null
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locked"))) { #optional property not found
            $Locked = $null
        } else {
            $Locked = $JsonParameters.PSobject.Properties["locked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privileged"))) { #optional property not found
            $Privileged = $null
        } else {
            $Privileged = $JsonParameters.PSobject.Properties["privileged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manuallyCorrelated"))) { #optional property not found
            $ManuallyCorrelated = $null
        } else {
            $ManuallyCorrelated = $JsonParameters.PSobject.Properties["manuallyCorrelated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordLastSet"))) { #optional property not found
            $PasswordLastSet = $null
        } else {
            $PasswordLastSet = $JsonParameters.PSobject.Properties["passwordLastSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementAttributes"))) { #optional property not found
            $EntitlementAttributes = $null
        } else {
            $EntitlementAttributes = $JsonParameters.PSobject.Properties["entitlementAttributes"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "access"))) { #optional property not found
            $Access = $null
        } else {
            $Access = $JsonParameters.PSobject.Properties["access"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementCount"))) { #optional property not found
            $EntitlementCount = $null
        } else {
            $EntitlementCount = $JsonParameters.PSobject.Properties["entitlementCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uncorrelated"))) { #optional property not found
            $Uncorrelated = $null
        } else {
            $Uncorrelated = $JsonParameters.PSobject.Properties["uncorrelated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
            "accountId" = ${AccountId}
            "source" = ${Source}
            "disabled" = ${Disabled}
            "locked" = ${Locked}
            "privileged" = ${Privileged}
            "manuallyCorrelated" = ${ManuallyCorrelated}
            "passwordLastSet" = ${PasswordLastSet}
            "entitlementAttributes" = ${EntitlementAttributes}
            "created" = ${Created}
            "modified" = ${Modified}
            "attributes" = ${Attributes}
            "identity" = ${Identity}
            "access" = ${Access}
            "entitlementCount" = ${EntitlementCount}
            "uncorrelated" = ${Uncorrelated}
            "tags" = ${Tags}
        }

        return $PSO
    }

}
