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

.PARAMETER Source
No description available.
.PARAMETER AccountId
The unique idenfier of the account being provisioned.
.PARAMETER AccountOperation
The provisioning operation; typically Create, Modify, Enable, Disable, Unlock, or Delete.
.PARAMETER ProvisioningResult
The overall result of the provisioning transaction; this could be success, pending, failed, etc.
.PARAMETER ProvisioningTarget
The name of the provisioning channel selected; this could be the same as the source, or could be a Service Desk Integration Module (SDIM).
.PARAMETER TicketId
A reference to a tracking number, if this is sent to a Service Desk Integration Module (SDIM).
.PARAMETER AttributeRequests
A list of attributes as part of the provisioning transaction.
.OUTPUTS

TriggerInputProvisioningCompletedAccountRequestsInner<PSCustomObject>
#>

function Initialize-BetaTriggerInputProvisioningCompletedAccountRequestsInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountOperation},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "PENDING", "FAILED")]
        [PSCustomObject]
        ${ProvisioningResult},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProvisioningTarget},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TicketId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AttributeRequests}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTriggerInputProvisioningCompletedAccountRequestsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Source) {
            throw "invalid value for 'Source', 'Source' cannot be null."
        }

        if ($null -eq $AccountOperation) {
            throw "invalid value for 'AccountOperation', 'AccountOperation' cannot be null."
        }

        if ($null -eq $ProvisioningResult) {
            throw "invalid value for 'ProvisioningResult', 'ProvisioningResult' cannot be null."
        }

        if ($null -eq $ProvisioningTarget) {
            throw "invalid value for 'ProvisioningTarget', 'ProvisioningTarget' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "source" = ${Source}
            "accountId" = ${AccountId}
            "accountOperation" = ${AccountOperation}
            "provisioningResult" = ${ProvisioningResult}
            "provisioningTarget" = ${ProvisioningTarget}
            "ticketId" = ${TicketId}
            "attributeRequests" = ${AttributeRequests}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TriggerInputProvisioningCompletedAccountRequestsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to TriggerInputProvisioningCompletedAccountRequestsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TriggerInputProvisioningCompletedAccountRequestsInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTriggerInputProvisioningCompletedAccountRequestsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTriggerInputProvisioningCompletedAccountRequestsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTriggerInputProvisioningCompletedAccountRequestsInner
        $AllProperties = ("source", "accountId", "accountOperation", "provisioningResult", "provisioningTarget", "ticketId", "attributeRequests")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'source' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) {
            throw "Error! JSON cannot be serialized due to the required property 'source' missing."
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountOperation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountOperation' missing."
        } else {
            $AccountOperation = $JsonParameters.PSobject.Properties["accountOperation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningResult"))) {
            throw "Error! JSON cannot be serialized due to the required property 'provisioningResult' missing."
        } else {
            $ProvisioningResult = $JsonParameters.PSobject.Properties["provisioningResult"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningTarget"))) {
            throw "Error! JSON cannot be serialized due to the required property 'provisioningTarget' missing."
        } else {
            $ProvisioningTarget = $JsonParameters.PSobject.Properties["provisioningTarget"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ticketId"))) { #optional property not found
            $TicketId = $null
        } else {
            $TicketId = $JsonParameters.PSobject.Properties["ticketId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeRequests"))) { #optional property not found
            $AttributeRequests = $null
        } else {
            $AttributeRequests = $JsonParameters.PSobject.Properties["attributeRequests"].value
        }

        $PSO = [PSCustomObject]@{
            "source" = ${Source}
            "accountId" = ${AccountId}
            "accountOperation" = ${AccountOperation}
            "provisioningResult" = ${ProvisioningResult}
            "provisioningTarget" = ${ProvisioningTarget}
            "ticketId" = ${TicketId}
            "attributeRequests" = ${AttributeRequests}
        }

        return $PSO
    }

}
