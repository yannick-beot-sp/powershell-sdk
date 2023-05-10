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

An object holding the access that is being reviewed

.PARAMETER Access
No description available.
.PARAMETER Entitlement
No description available.
.PARAMETER AccessProfile
No description available.
.PARAMETER Role
No description available.
.OUTPUTS

AccessSummary<PSCustomObject>
#>

function Initialize-AccessSummary {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Access},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Entitlement},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessProfile},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Role}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => AccessSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "access" = ${Access}
            "entitlement" = ${Entitlement}
            "accessProfile" = ${AccessProfile}
            "role" = ${Role}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessSummary<PSCustomObject>
#>
function ConvertFrom-JsonToAccessSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => AccessSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AccessSummary
        $AllProperties = ("access", "entitlement", "accessProfile", "role")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "access"))) { #optional property not found
            $Access = $null
        } else {
            $Access = $JsonParameters.PSobject.Properties["access"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlement"))) { #optional property not found
            $Entitlement = $null
        } else {
            $Entitlement = $JsonParameters.PSobject.Properties["entitlement"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfile"))) { #optional property not found
            $AccessProfile = $null
        } else {
            $AccessProfile = $JsonParameters.PSobject.Properties["accessProfile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "role"))) { #optional property not found
            $Role = $null
        } else {
            $Role = $JsonParameters.PSobject.Properties["role"].value
        }

        $PSO = [PSCustomObject]@{
            "access" = ${Access}
            "entitlement" = ${Entitlement}
            "accessProfile" = ${AccessProfile}
            "role" = ${Role}
        }

        return $PSO
    }

}
