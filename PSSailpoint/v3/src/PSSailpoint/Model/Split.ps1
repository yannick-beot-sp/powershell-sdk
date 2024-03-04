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

.PARAMETER Delimiter
This can be either a single character or a regex expression, and is used by the transform to identify the break point between two substrings in the incoming data
.PARAMETER Index
An integer value for the desired array element after the incoming data has been split into a list; the array is a 0-based object, so the first array element would be index 0, the second element would be index 1, etc.
.PARAMETER Throws
A boolean (true/false) value which indicates whether an exception should be thrown and returned as an output when an index is out of bounds with the resultant array (i.e., the provided index value is larger than the size of the array)   `true` - The transform should return ""IndexOutOfBoundsException""   `false` - The transform should return null   If not provided, the transform will default to false and return a null 
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

Split<PSCustomObject>
#>

function Initialize-Split {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Delimiter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Index},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Throws} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Split' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Delimiter) {
            throw "invalid value for 'Delimiter', 'Delimiter' cannot be null."
        }

        if (!$Index) {
            throw "invalid value for 'Index', 'Index' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "delimiter" = ${Delimiter}
            "index" = ${Index}
            "throws" = ${Throws}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Split<PSCustomObject>

.DESCRIPTION

Convert from JSON to Split<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Split<PSCustomObject>
#>
function ConvertFrom-JsonToSplit {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Split' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Split
        $AllProperties = ("delimiter", "index", "throws", "requiresPeriodicRefresh", "input")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'delimiter' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "delimiter"))) {
            throw "Error! JSON cannot be serialized due to the required property 'delimiter' missing."
        } else {
            $Delimiter = $JsonParameters.PSobject.Properties["delimiter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "index"))) {
            throw "Error! JSON cannot be serialized due to the required property 'index' missing."
        } else {
            $Index = $JsonParameters.PSobject.Properties["index"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "throws"))) { #optional property not found
            $Throws = $null
        } else {
            $Throws = $JsonParameters.PSobject.Properties["throws"].value
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
            "delimiter" = ${Delimiter}
            "index" = ${Index}
            "throws" = ${Throws}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }

}

