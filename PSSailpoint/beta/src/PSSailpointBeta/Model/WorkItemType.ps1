#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum WorkItemType.

.DESCRIPTION

The type of the work item
#>

enum WorkItemType {
    # enum value: "UNKNOWN"
    UNKNOWN
    # enum value: "GENERIC"
    GENERIC
    # enum value: "CERTIFICATION"
    CERTIFICATION
    # enum value: "REMEDIATION"
    REMEDIATION
    # enum value: "DELEGATION"
    DELEGATION
    # enum value: "APPROVAL"
    APPROVAL
    # enum value: "VIOLATIONREVIEW"
    VIOLATIONREVIEW
    # enum value: "FORM"
    FORM
    # enum value: "POLICYVIOLATION"
    POLICYVIOLATION
    # enum value: "CHALLENGE"
    CHALLENGE
    # enum value: "IMPACTANALYSIS"
    IMPACTANALYSIS
    # enum value: "SIGNOFF"
    SIGNOFF
    # enum value: "EVENT"
    EVENT
    # enum value: "MANUALACTION"
    MANUALACTION
    # enum value: "TEST"
    TEST
}

