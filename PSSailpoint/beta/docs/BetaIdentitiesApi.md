# PSSailpointBeta.PSSailpointBeta/Api.BetaIdentitiesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-BetaIdentity**](BetaIdentitiesApi.md#Remove-BetaIdentity) | **DELETE** /identities/{id} | Deletes an identity.
[**Get-BetaIdentity**](BetaIdentitiesApi.md#Get-BetaIdentity) | **GET** /identities/{id} | Identity Details
[**Get-BetaIdentities**](BetaIdentitiesApi.md#Get-BetaIdentities) | **GET** /identities | List Identities
[**Sync-BetahronizeAttributesForIdentity**](BetaIdentitiesApi.md#Sync-BetahronizeAttributesForIdentity) | **POST** /identities/{identityId}/synchronize-attributes | Attribute synchronization for single identity.


<a name="Remove-BetaIdentity"></a>
# **Remove-BetaIdentity**
> void Remove-BetaIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Deletes an identity.

The API returns successful response if the requested identity was deleted.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Identity Id

# Deletes an identity.
try {
    $Result = Remove-BetaIdentity -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Identity Id | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaIdentity"></a>
# **Get-BetaIdentity**
> Identity Get-BetaIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Identity Details

This API returns a single identity using the Identity ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Identity Id

# Identity Details
try {
    $Result = Get-BetaIdentity -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Identity Id | 

### Return type

[**Identity**](Identity.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaIdentities"></a>
# **Get-BetaIdentities**
> Identity[] Get-BetaIdentities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DefaultFilter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>

List Identities

This API returns a list of identities.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "id eq "6c9079b270a266a60170a2779fcb0006" or correlated eq false" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **alias**: *eq, sw*  **firstname**: *eq, sw*  **lastname**: *eq, sw*  **email**: *eq, sw*  **cloudStatus**: *eq*  **processingState**: *eq*  **correlated**: *eq*  **protected**: *eq* (optional)
$Sorters = "name,-cloudStatus" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters/#sorting-results)  Sorting is supported for the following fields: **name, alias, cloudStatus** (optional)
$DefaultFilter = "CORRELATED_ONLY" # String | Adds additional filter to filters query parameter.  CORRELATED_ONLY adds correlated=true and returns only identities that are correlated.  NONE does not add any and returns all identities that satisfy filters query parameter. (optional) (default to "CORRELATED_ONLY")
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)

# List Identities
try {
    $Result = Get-BetaIdentities -Filters $Filters -Sorters $Sorters -DefaultFilter $DefaultFilter -Count $Count -Limit $Limit -Offset $Offset
} catch {
    Write-Host ("Exception occurred when calling Get-BetaIdentities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **alias**: *eq, sw*  **firstname**: *eq, sw*  **lastname**: *eq, sw*  **email**: *eq, sw*  **cloudStatus**: *eq*  **processingState**: *eq*  **correlated**: *eq*  **protected**: *eq* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters/#sorting-results)  Sorting is supported for the following fields: **name, alias, cloudStatus** | [optional] 
 **DefaultFilter** | **String**| Adds additional filter to filters query parameter.  CORRELATED_ONLY adds correlated&#x3D;true and returns only identities that are correlated.  NONE does not add any and returns all identities that satisfy filters query parameter. | [optional] [default to &quot;CORRELATED_ONLY&quot;]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]

### Return type

[**Identity[]**](Identity.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Sync-BetahronizeAttributesForIdentity"></a>
# **Sync-BetahronizeAttributesForIdentity**
> IdentitySyncJob Sync-BetahronizeAttributesForIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>

Attribute synchronization for single identity.

This end-point performs attribute synchronization for a selected identity. The endpoint can be called once in 10 seconds per identity. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "MyIdentityId" # String | The Identity id

# Attribute synchronization for single identity.
try {
    $Result = Sync-BetahronizeAttributesForIdentity -IdentityId $IdentityId
} catch {
    Write-Host ("Exception occurred when calling Sync-BetahronizeAttributesForIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| The Identity id | 

### Return type

[**IdentitySyncJob**](IdentitySyncJob.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
