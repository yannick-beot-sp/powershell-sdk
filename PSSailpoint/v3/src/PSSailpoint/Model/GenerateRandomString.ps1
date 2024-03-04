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
This must always be set to ""Cloud Services Deployment Utility""
.PARAMETER Operation
The operation to perform `generateRandomString`
.PARAMETER IncludeNumbers
This must be either ""true"" or ""false"" to indicate whether the generator logic should include numbers
.PARAMETER IncludeSpecialChars
This must be either ""true"" or ""false"" to indicate whether the generator logic should include special characters
.PARAMETER Length
This specifies how long the randomly generated string needs to be   >NOTE Due to identity attribute data constraints, the maximum allowable value is 450 characters 
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.OUTPUTS

GenerateRandomString<PSCustomObject>
#>

function Initialize-GenerateRandomString {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IncludeNumbers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IncludeSpecialChars},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Length},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => GenerateRandomString' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Operation) {
            throw "invalid value for 'Operation', 'Operation' cannot be null."
        }

        if (!$IncludeNumbers) {
            throw "invalid value for 'IncludeNumbers', 'IncludeNumbers' cannot be null."
        }

        if (!$IncludeSpecialChars) {
            throw "invalid value for 'IncludeSpecialChars', 'IncludeSpecialChars' cannot be null."
        }

        if (!$Length) {
            throw "invalid value for 'Length', 'Length' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "operation" = ${Operation}
            "includeNumbers" = ${IncludeNumbers}
            "includeSpecialChars" = ${IncludeSpecialChars}
            "length" = ${Length}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GenerateRandomString<PSCustomObject>

.DESCRIPTION

Convert from JSON to GenerateRandomString<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GenerateRandomString<PSCustomObject>
#>
function ConvertFrom-JsonToGenerateRandomString {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => GenerateRandomString' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GenerateRandomString
        $AllProperties = ("name", "operation", "includeNumbers", "includeSpecialChars", "length", "requiresPeriodicRefresh")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operation' missing."
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeNumbers"))) {
            throw "Error! JSON cannot be serialized due to the required property 'includeNumbers' missing."
        } else {
            $IncludeNumbers = $JsonParameters.PSobject.Properties["includeNumbers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeSpecialChars"))) {
            throw "Error! JSON cannot be serialized due to the required property 'includeSpecialChars' missing."
        } else {
            $IncludeSpecialChars = $JsonParameters.PSobject.Properties["includeSpecialChars"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "length"))) {
            throw "Error! JSON cannot be serialized due to the required property 'length' missing."
        } else {
            $Length = $JsonParameters.PSobject.Properties["length"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "operation" = ${Operation}
            "includeNumbers" = ${IncludeNumbers}
            "includeSpecialChars" = ${IncludeSpecialChars}
            "length" = ${Length}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
        }

        return $PSO
    }

}

