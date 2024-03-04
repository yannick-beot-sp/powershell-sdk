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

Query parameters used to construct an Elasticsearch text query object.

.PARAMETER Terms
Words or characters that specify a particular thing to be searched for.
.PARAMETER Fields
The fields to be searched.
.PARAMETER MatchAny
Indicates that at least one of the terms must be found in the specified fields;  otherwise, all terms must be found.
.PARAMETER Contains
Indicates that the terms can be located anywhere in the specified fields;  otherwise, the fields must begin with the terms.
.OUTPUTS

TextQuery<PSCustomObject>
#>

function Initialize-TextQuery {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Terms},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Fields},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MatchAny} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Contains} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => TextQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Terms) {
            throw "invalid value for 'Terms', 'Terms' cannot be null."
        }

        if (!$Fields) {
            throw "invalid value for 'Fields', 'Fields' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "terms" = ${Terms}
            "fields" = ${Fields}
            "matchAny" = ${MatchAny}
            "contains" = ${Contains}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TextQuery<PSCustomObject>

.DESCRIPTION

Convert from JSON to TextQuery<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TextQuery<PSCustomObject>
#>
function ConvertFrom-JsonToTextQuery {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => TextQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TextQuery
        $AllProperties = ("terms", "fields", "matchAny", "contains")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'terms' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "terms"))) {
            throw "Error! JSON cannot be serialized due to the required property 'terms' missing."
        } else {
            $Terms = $JsonParameters.PSobject.Properties["terms"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) {
            throw "Error! JSON cannot be serialized due to the required property 'fields' missing."
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "matchAny"))) { #optional property not found
            $MatchAny = $null
        } else {
            $MatchAny = $JsonParameters.PSobject.Properties["matchAny"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contains"))) { #optional property not found
            $Contains = $null
        } else {
            $Contains = $JsonParameters.PSobject.Properties["contains"].value
        }

        $PSO = [PSCustomObject]@{
            "terms" = ${Terms}
            "fields" = ${Fields}
            "matchAny" = ${MatchAny}
            "contains" = ${Contains}
        }

        return $PSO
    }

}

