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

.PARAMETER Locale
The locale for the message text, a BCP 47 language tag.
.PARAMETER LocaleOrigin
No description available.
.PARAMETER Text
Actual text of the error message in the indicated locale.
.OUTPUTS

ErrorMessageDto<PSCustomObject>
#>

function Initialize-ErrorMessageDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DEFAULT", "REQUEST", "")]
        [PSCustomObject]
        ${LocaleOrigin},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ErrorMessageDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "locale" = ${Locale}
            "localeOrigin" = ${LocaleOrigin}
            "text" = ${Text}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ErrorMessageDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ErrorMessageDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ErrorMessageDto<PSCustomObject>
#>
function ConvertFrom-JsonToErrorMessageDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ErrorMessageDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ErrorMessageDto
        $AllProperties = ("locale", "localeOrigin", "text")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localeOrigin"))) { #optional property not found
            $LocaleOrigin = $null
        } else {
            $LocaleOrigin = $JsonParameters.PSobject.Properties["localeOrigin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        $PSO = [PSCustomObject]@{
            "locale" = ${Locale}
            "localeOrigin" = ${LocaleOrigin}
            "text" = ${Text}
        }

        return $PSO
    }

}

