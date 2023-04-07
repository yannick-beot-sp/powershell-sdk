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

Defines matching criteria for an Account to be provisioned with a specific Access Profile

.PARAMETER Operation
No description available.
.PARAMETER Attribute
Name of the Account attribute to be tested. If **operation** is one of EQUALS, NOT_EQUALS, CONTAINS, or HAS, this field is required. Otherwise, specifying it is an error.
.PARAMETER Value
String value to test the Account attribute w/r/t the specified operation. If the operation is one of EQUALS, NOT_EQUALS, or CONTAINS, this field is required. Otherwise, specifying it is an error. If the Attribute is not String-typed, it will be converted to the appropriate type.
.PARAMETER Children
Array of child criteria. Required if the operation is AND or OR, otherwise it must be left null. A maximum of three levels of criteria are supported, including leaf nodes.
.OUTPUTS

ProvisioningCriteriaLevel2<PSCustomObject>
#>

function Initialize-ProvisioningCriteriaLevel2 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EQUALS", "NOT_EQUALS", "CONTAINS", "HAS", "AND", "OR")]
        [PSCustomObject]
        ${Operation},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Children}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ProvisioningCriteriaLevel2' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operation" = ${Operation}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "children" = ${Children}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProvisioningCriteriaLevel2<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProvisioningCriteriaLevel2<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProvisioningCriteriaLevel2<PSCustomObject>
#>
function ConvertFrom-JsonToProvisioningCriteriaLevel2 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ProvisioningCriteriaLevel2' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProvisioningCriteriaLevel2
        $AllProperties = ("operation", "attribute", "value", "children")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "children"))) { #optional property not found
            $Children = $null
        } else {
            $Children = $JsonParameters.PSobject.Properties["children"].value
        }

        $PSO = [PSCustomObject]@{
            "operation" = ${Operation}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "children" = ${Children}
        }

        return $PSO
    }

}
