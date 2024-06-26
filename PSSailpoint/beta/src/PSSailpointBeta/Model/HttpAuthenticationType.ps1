#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum HttpAuthenticationType.

.DESCRIPTION

Defines the HTTP Authentication type. Additional values may be added in the future.  If *NO_AUTH* is selected, no extra information will be in HttpConfig.  If *BASIC_AUTH* is selected, HttpConfig will include BasicAuthConfig with Username and Password as strings.  If *BEARER_TOKEN* is selected, HttpConfig will include BearerTokenAuthConfig with Token as string.
#>

enum HttpAuthenticationType {
    # enum value: "NO_AUTH"
    NO_AUTH
    # enum value: "BASIC_AUTH"
    BASIC_AUTH
    # enum value: "BEARER_TOKEN"
    BEARER_TOKEN
}

