#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum AccessRequestType.

.DESCRIPTION

Access request type. Defaults to GRANT_ACCESS. REVOKE_ACCESS type can only have a single Identity ID in the requestedFor field.
#>

enum AccessRequestType {
    # enum value: "GRANT_ACCESS"
    GRANT_ACCESS
    # enum value: "REVOKE_ACCESS"
    REVOKE_ACCESS
}
