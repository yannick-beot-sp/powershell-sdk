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

.PARAMETER MfaMethod
Mfa method name
.PARAMETER Enabled
If MFA method is enabled.
.PARAMETER VarHost
The server host name or IP address of the MFA provider.
.PARAMETER AccessKey
The secret key for authenticating requests to the MFA provider.
.PARAMETER IdentityAttribute
Optional. The name of the attribute for mapping IdentityNow identity to the MFA provider.
.PARAMETER ConfigProperties
A map with additional config properties for the given MFA method - duo-web.
.OUTPUTS

MfaDuoConfig<PSCustomObject>
#>

function Initialize-BetaMfaDuoConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MfaMethod},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarHost},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessKey},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityAttribute},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ConfigProperties}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaMfaDuoConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "mfaMethod" = ${MfaMethod}
            "enabled" = ${Enabled}
            "host" = ${VarHost}
            "accessKey" = ${AccessKey}
            "identityAttribute" = ${IdentityAttribute}
            "configProperties" = ${ConfigProperties}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MfaDuoConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to MfaDuoConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MfaDuoConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToMfaDuoConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaMfaDuoConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaMfaDuoConfig
        $AllProperties = ("mfaMethod", "enabled", "host", "accessKey", "identityAttribute", "configProperties")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mfaMethod"))) { #optional property not found
            $MfaMethod = $null
        } else {
            $MfaMethod = $JsonParameters.PSobject.Properties["mfaMethod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "host"))) { #optional property not found
            $VarHost = $null
        } else {
            $VarHost = $JsonParameters.PSobject.Properties["host"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessKey"))) { #optional property not found
            $AccessKey = $null
        } else {
            $AccessKey = $JsonParameters.PSobject.Properties["accessKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttribute"))) { #optional property not found
            $IdentityAttribute = $null
        } else {
            $IdentityAttribute = $JsonParameters.PSobject.Properties["identityAttribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configProperties"))) { #optional property not found
            $ConfigProperties = $null
        } else {
            $ConfigProperties = $JsonParameters.PSobject.Properties["configProperties"].value
        }

        $PSO = [PSCustomObject]@{
            "mfaMethod" = ${MfaMethod}
            "enabled" = ${Enabled}
            "host" = ${VarHost}
            "accessKey" = ${AccessKey}
            "identityAttribute" = ${IdentityAttribute}
            "configProperties" = ${ConfigProperties}
        }

        return $PSO
    }

}

