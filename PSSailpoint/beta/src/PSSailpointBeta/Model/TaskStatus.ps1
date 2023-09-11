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

Details and current status of a specific task

.PARAMETER Id
System-generated unique ID of the task this TaskStatus represents
.PARAMETER Type
Type of task this TaskStatus represents
.PARAMETER UniqueName
Name of the task this TaskStatus represents
.PARAMETER Description
Description of the task this TaskStatus represents
.PARAMETER ParentName
Name of the parent of the task this TaskStatus represents
.PARAMETER Launcher
Service to execute the task this TaskStatus represents
.PARAMETER Created
Creation date of the task this TaskStatus represents
.PARAMETER Modified
Last modification date of the task this TaskStatus represents
.PARAMETER Launched
Launch date of the task this TaskStatus represents
.PARAMETER Completed
Completion date of the task this TaskStatus represents
.PARAMETER CompletionStatus
Completion status of the task this TaskStatus represents
.PARAMETER Messages
Messages associated with the task this TaskStatus represents
.PARAMETER Returns
Return values from the task this TaskStatus represents
.PARAMETER Attributes
Attributes of the task this TaskStatus represents
.PARAMETER Progress
Current progress of the task this TaskStatus represents
.PARAMETER PercentComplete
Current percentage completion of the task this TaskStatus represents
.OUTPUTS

TaskStatus<PSCustomObject>
#>

function Initialize-BetaTaskStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("QUARTZ", "QPOC", "QUEUED_TASK")]
        [String]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UniqueName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParentName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Launcher},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Modified},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Launched},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Completed},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Success", "Warning", "Error", "Terminated", "TempError")]
        [String]
        ${CompletionStatus},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Messages},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Returns},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Progress},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${PercentComplete}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTaskStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $UniqueName) {
            throw "invalid value for 'UniqueName', 'UniqueName' cannot be null."
        }

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $ParentName) {
            throw "invalid value for 'ParentName', 'ParentName' cannot be null."
        }

        if ($null -eq $Launcher) {
            throw "invalid value for 'Launcher', 'Launcher' cannot be null."
        }

        if ($null -eq $Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if ($null -eq $Modified) {
            throw "invalid value for 'Modified', 'Modified' cannot be null."
        }

        if ($null -eq $Launched) {
            throw "invalid value for 'Launched', 'Launched' cannot be null."
        }

        if ($null -eq $Completed) {
            throw "invalid value for 'Completed', 'Completed' cannot be null."
        }

        if ($null -eq $CompletionStatus) {
            throw "invalid value for 'CompletionStatus', 'CompletionStatus' cannot be null."
        }

        if ($null -eq $Messages) {
            throw "invalid value for 'Messages', 'Messages' cannot be null."
        }

        if ($null -eq $Returns) {
            throw "invalid value for 'Returns', 'Returns' cannot be null."
        }

        if ($null -eq $Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }

        if ($null -eq $Progress) {
            throw "invalid value for 'Progress', 'Progress' cannot be null."
        }

        if ($null -eq $PercentComplete) {
            throw "invalid value for 'PercentComplete', 'PercentComplete' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "uniqueName" = ${UniqueName}
            "description" = ${Description}
            "parentName" = ${ParentName}
            "launcher" = ${Launcher}
            "created" = ${Created}
            "modified" = ${Modified}
            "launched" = ${Launched}
            "completed" = ${Completed}
            "completionStatus" = ${CompletionStatus}
            "messages" = ${Messages}
            "returns" = ${Returns}
            "attributes" = ${Attributes}
            "progress" = ${Progress}
            "percentComplete" = ${PercentComplete}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TaskStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to TaskStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TaskStatus<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTaskStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTaskStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTaskStatus
        $AllProperties = ("id", "type", "uniqueName", "description", "parentName", "launcher", "created", "modified", "launched", "completed", "completionStatus", "messages", "returns", "attributes", "progress", "percentComplete")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uniqueName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'uniqueName' missing."
        } else {
            $UniqueName = $JsonParameters.PSobject.Properties["uniqueName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parentName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'parentName' missing."
        } else {
            $ParentName = $JsonParameters.PSobject.Properties["parentName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launcher"))) {
            throw "Error! JSON cannot be serialized due to the required property 'launcher' missing."
        } else {
            $Launcher = $JsonParameters.PSobject.Properties["launcher"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) {
            throw "Error! JSON cannot be serialized due to the required property 'modified' missing."
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launched"))) {
            throw "Error! JSON cannot be serialized due to the required property 'launched' missing."
        } else {
            $Launched = $JsonParameters.PSobject.Properties["launched"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completed' missing."
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completionStatus"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completionStatus' missing."
        } else {
            $CompletionStatus = $JsonParameters.PSobject.Properties["completionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messages"))) {
            throw "Error! JSON cannot be serialized due to the required property 'messages' missing."
        } else {
            $Messages = $JsonParameters.PSobject.Properties["messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "returns"))) {
            throw "Error! JSON cannot be serialized due to the required property 'returns' missing."
        } else {
            $Returns = $JsonParameters.PSobject.Properties["returns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "progress"))) {
            throw "Error! JSON cannot be serialized due to the required property 'progress' missing."
        } else {
            $Progress = $JsonParameters.PSobject.Properties["progress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "percentComplete"))) {
            throw "Error! JSON cannot be serialized due to the required property 'percentComplete' missing."
        } else {
            $PercentComplete = $JsonParameters.PSobject.Properties["percentComplete"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "uniqueName" = ${UniqueName}
            "description" = ${Description}
            "parentName" = ${ParentName}
            "launcher" = ${Launcher}
            "created" = ${Created}
            "modified" = ${Modified}
            "launched" = ${Launched}
            "completed" = ${Completed}
            "completionStatus" = ${CompletionStatus}
            "messages" = ${Messages}
            "returns" = ${Returns}
            "attributes" = ${Attributes}
            "progress" = ${Progress}
            "percentComplete" = ${PercentComplete}
        }

        return $PSO
    }

}

