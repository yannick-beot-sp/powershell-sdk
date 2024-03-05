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

.PARAMETER SourceName
A reference to the source to search for the account
.PARAMETER AttributeName
The name of the attribute on the account to return. This should match the name of the account attribute name visible in the user interface, or on the source schema.
.PARAMETER AccountSortAttribute
The value of this configuration is a string name of the attribute to use when determining the ordering of returned accounts when there are multiple entries
.PARAMETER AccountSortDescending
The value of this configuration is a boolean (true/false). Controls the order of the sort when there are multiple accounts. If not defined, the transform will default to false (ascending order)
.PARAMETER AccountReturnFirstLink
The value of this configuration is a boolean (true/false). Controls which account to source a value from for an attribute.  If this flag is set to true, the transform returns the value from the first account in the list, even if it is null. If it is set to false, the transform returns the first non-null value. If not defined, the transform will default to false
.PARAMETER AccountFilter
This expression queries the database to narrow search results. The value of this configuration is a sailpoint.object.Filter expression and used when searching against the database.  The default filter will always include the source and identity, and any subsequent expressions will be combined in an AND operation to the existing search criteria. Only certain searchable attributes are available:  - `nativeIdentity` - the Account ID  - `displayName` - the Account Name  - `entitlements` - a boolean value to determine if the account has entitlements
.PARAMETER AccountPropertyFilter
This expression is used to search and filter accounts in memory. The value of this configuration is a sailpoint.object.Filter expression and used when searching against the returned resultset.  All account attributes are available for filtering as this operation is performed in memory.
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

AccountAttribute<PSCustomObject>
#>

function Initialize-BetaAccountAttribute {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountSortAttribute} = "created",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AccountSortDescending} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AccountReturnFirstLink} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountFilter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountPropertyFilter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccountAttribute' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$SourceName) {
            throw "invalid value for 'SourceName', 'SourceName' cannot be null."
        }

        if (!$AttributeName) {
            throw "invalid value for 'AttributeName', 'AttributeName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "sourceName" = ${SourceName}
            "attributeName" = ${AttributeName}
            "accountSortAttribute" = ${AccountSortAttribute}
            "accountSortDescending" = ${AccountSortDescending}
            "accountReturnFirstLink" = ${AccountReturnFirstLink}
            "accountFilter" = ${AccountFilter}
            "accountPropertyFilter" = ${AccountPropertyFilter}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountAttribute<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountAttribute<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountAttribute<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountAttribute {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccountAttribute' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccountAttribute
        $AllProperties = ("sourceName", "attributeName", "accountSortAttribute", "accountSortDescending", "accountReturnFirstLink", "accountFilter", "accountPropertyFilter", "requiresPeriodicRefresh", "input")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'sourceName' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceName' missing."
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributeName' missing."
        } else {
            $AttributeName = $JsonParameters.PSobject.Properties["attributeName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountSortAttribute"))) { #optional property not found
            $AccountSortAttribute = $null
        } else {
            $AccountSortAttribute = $JsonParameters.PSobject.Properties["accountSortAttribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountSortDescending"))) { #optional property not found
            $AccountSortDescending = $null
        } else {
            $AccountSortDescending = $JsonParameters.PSobject.Properties["accountSortDescending"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountReturnFirstLink"))) { #optional property not found
            $AccountReturnFirstLink = $null
        } else {
            $AccountReturnFirstLink = $JsonParameters.PSobject.Properties["accountReturnFirstLink"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountFilter"))) { #optional property not found
            $AccountFilter = $null
        } else {
            $AccountFilter = $JsonParameters.PSobject.Properties["accountFilter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountPropertyFilter"))) { #optional property not found
            $AccountPropertyFilter = $null
        } else {
            $AccountPropertyFilter = $JsonParameters.PSobject.Properties["accountPropertyFilter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        $PSO = [PSCustomObject]@{
            "sourceName" = ${SourceName}
            "attributeName" = ${AttributeName}
            "accountSortAttribute" = ${AccountSortAttribute}
            "accountSortDescending" = ${AccountSortDescending}
            "accountReturnFirstLink" = ${AccountReturnFirstLink}
            "accountFilter" = ${AccountFilter}
            "accountPropertyFilter" = ${AccountPropertyFilter}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }

}
