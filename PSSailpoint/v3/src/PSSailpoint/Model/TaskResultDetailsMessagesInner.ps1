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

.PARAMETER Type
Type of the message.
.PARAMETER VarError
Flag whether message is an error.
.PARAMETER Warning
Flag whether message is a warning.
.PARAMETER Key
Message string identifier.
.PARAMETER LocalizedText
Message context with the locale based language.
.OUTPUTS

TaskResultDetailsMessagesInner<PSCustomObject>
#>

function Initialize-TaskResultDetailsMessagesInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INFO", "WARN", "ERROR")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${VarError} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Warning} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LocalizedText}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => TaskResultDetailsMessagesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "error" = ${VarError}
            "warning" = ${Warning}
            "key" = ${Key}
            "localizedText" = ${LocalizedText}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TaskResultDetailsMessagesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to TaskResultDetailsMessagesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TaskResultDetailsMessagesInner<PSCustomObject>
#>
function ConvertFrom-JsonToTaskResultDetailsMessagesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => TaskResultDetailsMessagesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TaskResultDetailsMessagesInner
        $AllProperties = ("type", "error", "warning", "key", "localizedText")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "error"))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties["error"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "warning"))) { #optional property not found
            $Warning = $null
        } else {
            $Warning = $JsonParameters.PSobject.Properties["warning"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localizedText"))) { #optional property not found
            $LocalizedText = $null
        } else {
            $LocalizedText = $JsonParameters.PSobject.Properties["localizedText"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "error" = ${VarError}
            "warning" = ${Warning}
            "key" = ${Key}
            "localizedText" = ${LocalizedText}
        }

        return $PSO
    }

}

