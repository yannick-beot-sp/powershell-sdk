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

.PARAMETER Policy
No description available.
.PARAMETER ConflictingAccessCriteria
No description available.
.OUTPUTS

ViolationContext<PSCustomObject>
#>

function Initialize-ViolationContext {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Policy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConflictingAccessCriteria}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ViolationContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "policy" = ${Policy}
            "conflictingAccessCriteria" = ${ConflictingAccessCriteria}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ViolationContext<PSCustomObject>

.DESCRIPTION

Convert from JSON to ViolationContext<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ViolationContext<PSCustomObject>
#>
function ConvertFrom-JsonToViolationContext {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ViolationContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ViolationContext
        $AllProperties = ("policy", "conflictingAccessCriteria")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "policy"))) { #optional property not found
            $Policy = $null
        } else {
            $Policy = $JsonParameters.PSobject.Properties["policy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conflictingAccessCriteria"))) { #optional property not found
            $ConflictingAccessCriteria = $null
        } else {
            $ConflictingAccessCriteria = $JsonParameters.PSobject.Properties["conflictingAccessCriteria"].value
        }

        $PSO = [PSCustomObject]@{
            "policy" = ${Policy}
            "conflictingAccessCriteria" = ${ConflictingAccessCriteria}
        }

        return $PSO
    }

}

