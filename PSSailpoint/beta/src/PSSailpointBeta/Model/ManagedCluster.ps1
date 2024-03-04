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

Managed Cluster

.PARAMETER Id
ManagedCluster ID
.PARAMETER Name
ManagedCluster name
.PARAMETER Pod
ManagedCluster pod
.PARAMETER Org
ManagedCluster org
.PARAMETER Type
No description available.
.PARAMETER Configuration
ManagedProcess configuration map
.PARAMETER KeyPair
No description available.
.PARAMETER Attributes
No description available.
.PARAMETER Description
ManagedCluster description
.PARAMETER Redis
No description available.
.PARAMETER ClientType
No description available.
.PARAMETER CcgVersion
CCG version used by the ManagedCluster
.PARAMETER PinnedConfig
boolean flag indiacting whether or not the cluster configuration is pinned
.PARAMETER LogConfiguration
No description available.
.PARAMETER Operational
Whether or not the cluster is operational or not
.PARAMETER Status
Cluster status
.PARAMETER PublicKeyCertificate
Public key certificate
.PARAMETER PublicKeyThumbprint
Public key thumbprint
.PARAMETER PublicKey
Public key
.PARAMETER AlertKey
Key describing any immediate cluster alerts
.PARAMETER ClientIds
List of clients in a cluster
.PARAMETER ServiceCount
Number of services bound to a cluster
.PARAMETER CcId
CC ID only used in calling CC, will be removed without notice when Migration to CEGS is finished
.PARAMETER CreatedAt
The date/time this cluster was created
.PARAMETER UpdatedAt
The date/time this cluster was last updated
.OUTPUTS

ManagedCluster<PSCustomObject>
#>

function Initialize-BetaManagedCluster {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pod},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Org},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("idn", "iai")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Configuration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${KeyPair},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Redis},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CCG", "VA", "INTERNAL", "IIQ_HARVESTER", "")]
        [PSCustomObject]
        ${ClientType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CcgVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PinnedConfig} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LogConfiguration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Operational} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PublicKeyCertificate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PublicKeyThumbprint},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PublicKey},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AlertKey},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ClientIds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ServiceCount} = 0,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CcId} = "0",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${UpdatedAt}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaManagedCluster' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$CcgVersion) {
            throw "invalid value for 'CcgVersion', 'CcgVersion' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "pod" = ${Pod}
            "org" = ${Org}
            "type" = ${Type}
            "configuration" = ${Configuration}
            "keyPair" = ${KeyPair}
            "attributes" = ${Attributes}
            "description" = ${Description}
            "redis" = ${Redis}
            "clientType" = ${ClientType}
            "ccgVersion" = ${CcgVersion}
            "pinnedConfig" = ${PinnedConfig}
            "logConfiguration" = ${LogConfiguration}
            "operational" = ${Operational}
            "status" = ${Status}
            "publicKeyCertificate" = ${PublicKeyCertificate}
            "publicKeyThumbprint" = ${PublicKeyThumbprint}
            "publicKey" = ${PublicKey}
            "alertKey" = ${AlertKey}
            "clientIds" = ${ClientIds}
            "serviceCount" = ${ServiceCount}
            "ccId" = ${CcId}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ManagedCluster<PSCustomObject>

.DESCRIPTION

Convert from JSON to ManagedCluster<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ManagedCluster<PSCustomObject>
#>
function ConvertFrom-BetaJsonToManagedCluster {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaManagedCluster' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaManagedCluster
        $AllProperties = ("id", "name", "pod", "org", "type", "configuration", "keyPair", "attributes", "description", "redis", "clientType", "ccgVersion", "pinnedConfig", "logConfiguration", "operational", "status", "publicKeyCertificate", "publicKeyThumbprint", "publicKey", "alertKey", "clientIds", "serviceCount", "ccId", "createdAt", "updatedAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'clientType' missing."
        } else {
            $ClientType = $JsonParameters.PSobject.Properties["clientType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ccgVersion"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ccgVersion' missing."
        } else {
            $CcgVersion = $JsonParameters.PSobject.Properties["ccgVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pod"))) { #optional property not found
            $Pod = $null
        } else {
            $Pod = $JsonParameters.PSobject.Properties["pod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "org"))) { #optional property not found
            $Org = $null
        } else {
            $Org = $JsonParameters.PSobject.Properties["org"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configuration"))) { #optional property not found
            $Configuration = $null
        } else {
            $Configuration = $JsonParameters.PSobject.Properties["configuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keyPair"))) { #optional property not found
            $KeyPair = $null
        } else {
            $KeyPair = $JsonParameters.PSobject.Properties["keyPair"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "redis"))) { #optional property not found
            $Redis = $null
        } else {
            $Redis = $JsonParameters.PSobject.Properties["redis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pinnedConfig"))) { #optional property not found
            $PinnedConfig = $null
        } else {
            $PinnedConfig = $JsonParameters.PSobject.Properties["pinnedConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "logConfiguration"))) { #optional property not found
            $LogConfiguration = $null
        } else {
            $LogConfiguration = $JsonParameters.PSobject.Properties["logConfiguration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operational"))) { #optional property not found
            $Operational = $null
        } else {
            $Operational = $JsonParameters.PSobject.Properties["operational"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "publicKeyCertificate"))) { #optional property not found
            $PublicKeyCertificate = $null
        } else {
            $PublicKeyCertificate = $JsonParameters.PSobject.Properties["publicKeyCertificate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "publicKeyThumbprint"))) { #optional property not found
            $PublicKeyThumbprint = $null
        } else {
            $PublicKeyThumbprint = $JsonParameters.PSobject.Properties["publicKeyThumbprint"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "publicKey"))) { #optional property not found
            $PublicKey = $null
        } else {
            $PublicKey = $JsonParameters.PSobject.Properties["publicKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alertKey"))) { #optional property not found
            $AlertKey = $null
        } else {
            $AlertKey = $JsonParameters.PSobject.Properties["alertKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientIds"))) { #optional property not found
            $ClientIds = $null
        } else {
            $ClientIds = $JsonParameters.PSobject.Properties["clientIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "serviceCount"))) { #optional property not found
            $ServiceCount = $null
        } else {
            $ServiceCount = $JsonParameters.PSobject.Properties["serviceCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ccId"))) { #optional property not found
            $CcId = $null
        } else {
            $CcId = $JsonParameters.PSobject.Properties["ccId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) { #optional property not found
            $UpdatedAt = $null
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "pod" = ${Pod}
            "org" = ${Org}
            "type" = ${Type}
            "configuration" = ${Configuration}
            "keyPair" = ${KeyPair}
            "attributes" = ${Attributes}
            "description" = ${Description}
            "redis" = ${Redis}
            "clientType" = ${ClientType}
            "ccgVersion" = ${CcgVersion}
            "pinnedConfig" = ${PinnedConfig}
            "logConfiguration" = ${LogConfiguration}
            "operational" = ${Operational}
            "status" = ${Status}
            "publicKeyCertificate" = ${PublicKeyCertificate}
            "publicKeyThumbprint" = ${PublicKeyThumbprint}
            "publicKey" = ${PublicKey}
            "alertKey" = ${AlertKey}
            "clientIds" = ${ClientIds}
            "serviceCount" = ${ServiceCount}
            "ccId" = ${CcId}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
        }

        return $PSO
    }

}

