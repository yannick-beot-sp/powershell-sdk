#
# SailPoint SaaS API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 2.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER CountryCodes
No description available.
.PARAMETER EnableExternalPasswordChange
No description available.
.PARAMETER EnableAutomaticPasswordReplay
No description available.
.PARAMETER EnableAutomationGeneration
No description available.
.PARAMETER KbaReqAnswers
No description available.
.PARAMETER KbaReqForAuthn
No description available.
.PARAMETER LockoutAttemptThreshold
No description available.
.PARAMETER LockoutTimeMinutes
No description available.
.PARAMETER LoginUrl
No description available.
.PARAMETER Netmasks
No description available.
.PARAMETER NotifyAuthenticationSettingChange
No description available.
.PARAMETER PasswordReplayState
No description available.
.PARAMETER PreferredIdentityInviteTemplate
No description available.
.PARAMETER RedirectPatterns
No description available.
.PARAMETER SsoPartnerSource
No description available.
.PARAMETER SystemNotificationEmails
No description available.
.PARAMETER TrackAnalytics
No description available.
.PARAMETER UsageCertRequired
No description available.
.PARAMETER UsageCertText
No description available.
.PARAMETER UsernameEmptyText
No description available.
.PARAMETER UsernameLabel
No description available.
.PARAMETER WhiteList
No description available.
.PARAMETER ApprovalConfig
No description available.
.OUTPUTS

UpdateOrgSettingsRequest<PSCustomObject>
#>

function Initialize-V2UpdateOrgSettingsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${CountryCodes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableExternalPasswordChange},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableAutomaticPasswordReplay},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableAutomationGeneration},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${KbaReqAnswers},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${KbaReqForAuthn},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${LockoutAttemptThreshold},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${LockoutTimeMinutes},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LoginUrl},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Netmasks},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${NotifyAuthenticationSettingChange},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("enabled", "passive", "disabled")]
        [String]
        ${PasswordReplayState},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PreferredIdentityInviteTemplate},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RedirectPatterns},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SsoPartnerSource},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SystemNotificationEmails},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${TrackAnalytics},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UsageCertRequired},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsageCertText},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsernameEmptyText},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsernameLabel},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${WhiteList},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApprovalConfig}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2 => V2UpdateOrgSettingsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "countryCodes" = ${CountryCodes}
            "enableExternalPasswordChange" = ${EnableExternalPasswordChange}
            "enableAutomaticPasswordReplay" = ${EnableAutomaticPasswordReplay}
            "enableAutomationGeneration" = ${EnableAutomationGeneration}
            "kbaReqAnswers" = ${KbaReqAnswers}
            "kbaReqForAuthn" = ${KbaReqForAuthn}
            "lockoutAttemptThreshold" = ${LockoutAttemptThreshold}
            "lockoutTimeMinutes" = ${LockoutTimeMinutes}
            "loginUrl" = ${LoginUrl}
            "netmasks" = ${Netmasks}
            "notifyAuthenticationSettingChange" = ${NotifyAuthenticationSettingChange}
            "passwordReplayState" = ${PasswordReplayState}
            "preferredIdentityInviteTemplate" = ${PreferredIdentityInviteTemplate}
            "redirectPatterns" = ${RedirectPatterns}
            "ssoPartnerSource" = ${SsoPartnerSource}
            "systemNotificationEmails" = ${SystemNotificationEmails}
            "trackAnalytics" = ${TrackAnalytics}
            "usageCertRequired" = ${UsageCertRequired}
            "usageCertText" = ${UsageCertText}
            "usernameEmptyText" = ${UsernameEmptyText}
            "usernameLabel" = ${UsernameLabel}
            "whiteList" = ${WhiteList}
            "approvalConfig" = ${ApprovalConfig}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateOrgSettingsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateOrgSettingsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateOrgSettingsRequest<PSCustomObject>
#>
function ConvertFrom-V2JsonToUpdateOrgSettingsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2 => V2UpdateOrgSettingsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2UpdateOrgSettingsRequest
        $AllProperties = ("countryCodes", "enableExternalPasswordChange", "enableAutomaticPasswordReplay", "enableAutomationGeneration", "kbaReqAnswers", "kbaReqForAuthn", "lockoutAttemptThreshold", "lockoutTimeMinutes", "loginUrl", "netmasks", "notifyAuthenticationSettingChange", "passwordReplayState", "preferredIdentityInviteTemplate", "redirectPatterns", "ssoPartnerSource", "systemNotificationEmails", "trackAnalytics", "usageCertRequired", "usageCertText", "usernameEmptyText", "usernameLabel", "whiteList", "approvalConfig")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "countryCodes"))) { #optional property not found
            $CountryCodes = $null
        } else {
            $CountryCodes = $JsonParameters.PSobject.Properties["countryCodes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableExternalPasswordChange"))) { #optional property not found
            $EnableExternalPasswordChange = $null
        } else {
            $EnableExternalPasswordChange = $JsonParameters.PSobject.Properties["enableExternalPasswordChange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableAutomaticPasswordReplay"))) { #optional property not found
            $EnableAutomaticPasswordReplay = $null
        } else {
            $EnableAutomaticPasswordReplay = $JsonParameters.PSobject.Properties["enableAutomaticPasswordReplay"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableAutomationGeneration"))) { #optional property not found
            $EnableAutomationGeneration = $null
        } else {
            $EnableAutomationGeneration = $JsonParameters.PSobject.Properties["enableAutomationGeneration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "kbaReqAnswers"))) { #optional property not found
            $KbaReqAnswers = $null
        } else {
            $KbaReqAnswers = $JsonParameters.PSobject.Properties["kbaReqAnswers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "kbaReqForAuthn"))) { #optional property not found
            $KbaReqForAuthn = $null
        } else {
            $KbaReqForAuthn = $JsonParameters.PSobject.Properties["kbaReqForAuthn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lockoutAttemptThreshold"))) { #optional property not found
            $LockoutAttemptThreshold = $null
        } else {
            $LockoutAttemptThreshold = $JsonParameters.PSobject.Properties["lockoutAttemptThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lockoutTimeMinutes"))) { #optional property not found
            $LockoutTimeMinutes = $null
        } else {
            $LockoutTimeMinutes = $JsonParameters.PSobject.Properties["lockoutTimeMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginUrl"))) { #optional property not found
            $LoginUrl = $null
        } else {
            $LoginUrl = $JsonParameters.PSobject.Properties["loginUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "netmasks"))) { #optional property not found
            $Netmasks = $null
        } else {
            $Netmasks = $JsonParameters.PSobject.Properties["netmasks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notifyAuthenticationSettingChange"))) { #optional property not found
            $NotifyAuthenticationSettingChange = $null
        } else {
            $NotifyAuthenticationSettingChange = $JsonParameters.PSobject.Properties["notifyAuthenticationSettingChange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordReplayState"))) { #optional property not found
            $PasswordReplayState = $null
        } else {
            $PasswordReplayState = $JsonParameters.PSobject.Properties["passwordReplayState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "preferredIdentityInviteTemplate"))) { #optional property not found
            $PreferredIdentityInviteTemplate = $null
        } else {
            $PreferredIdentityInviteTemplate = $JsonParameters.PSobject.Properties["preferredIdentityInviteTemplate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "redirectPatterns"))) { #optional property not found
            $RedirectPatterns = $null
        } else {
            $RedirectPatterns = $JsonParameters.PSobject.Properties["redirectPatterns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ssoPartnerSource"))) { #optional property not found
            $SsoPartnerSource = $null
        } else {
            $SsoPartnerSource = $JsonParameters.PSobject.Properties["ssoPartnerSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "systemNotificationEmails"))) { #optional property not found
            $SystemNotificationEmails = $null
        } else {
            $SystemNotificationEmails = $JsonParameters.PSobject.Properties["systemNotificationEmails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trackAnalytics"))) { #optional property not found
            $TrackAnalytics = $null
        } else {
            $TrackAnalytics = $JsonParameters.PSobject.Properties["trackAnalytics"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usageCertRequired"))) { #optional property not found
            $UsageCertRequired = $null
        } else {
            $UsageCertRequired = $JsonParameters.PSobject.Properties["usageCertRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usageCertText"))) { #optional property not found
            $UsageCertText = $null
        } else {
            $UsageCertText = $JsonParameters.PSobject.Properties["usageCertText"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usernameEmptyText"))) { #optional property not found
            $UsernameEmptyText = $null
        } else {
            $UsernameEmptyText = $JsonParameters.PSobject.Properties["usernameEmptyText"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usernameLabel"))) { #optional property not found
            $UsernameLabel = $null
        } else {
            $UsernameLabel = $JsonParameters.PSobject.Properties["usernameLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "whiteList"))) { #optional property not found
            $WhiteList = $null
        } else {
            $WhiteList = $JsonParameters.PSobject.Properties["whiteList"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalConfig"))) { #optional property not found
            $ApprovalConfig = $null
        } else {
            $ApprovalConfig = $JsonParameters.PSobject.Properties["approvalConfig"].value
        }

        $PSO = [PSCustomObject]@{
            "countryCodes" = ${CountryCodes}
            "enableExternalPasswordChange" = ${EnableExternalPasswordChange}
            "enableAutomaticPasswordReplay" = ${EnableAutomaticPasswordReplay}
            "enableAutomationGeneration" = ${EnableAutomationGeneration}
            "kbaReqAnswers" = ${KbaReqAnswers}
            "kbaReqForAuthn" = ${KbaReqForAuthn}
            "lockoutAttemptThreshold" = ${LockoutAttemptThreshold}
            "lockoutTimeMinutes" = ${LockoutTimeMinutes}
            "loginUrl" = ${LoginUrl}
            "netmasks" = ${Netmasks}
            "notifyAuthenticationSettingChange" = ${NotifyAuthenticationSettingChange}
            "passwordReplayState" = ${PasswordReplayState}
            "preferredIdentityInviteTemplate" = ${PreferredIdentityInviteTemplate}
            "redirectPatterns" = ${RedirectPatterns}
            "ssoPartnerSource" = ${SsoPartnerSource}
            "systemNotificationEmails" = ${SystemNotificationEmails}
            "trackAnalytics" = ${TrackAnalytics}
            "usageCertRequired" = ${UsageCertRequired}
            "usageCertText" = ${UsageCertText}
            "usernameEmptyText" = ${UsernameEmptyText}
            "usernameLabel" = ${UsernameLabel}
            "whiteList" = ${WhiteList}
            "approvalConfig" = ${ApprovalConfig}
        }

        return $PSO
    }

}
