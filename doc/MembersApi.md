# sarno_client.api.MembersApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrgMember**](MembersApi.md#addorgmember) | **POST** /api/orgs/{slug}/members | Add a member to an organization
[**addTeamMember**](MembersApi.md#addteammember) | **POST** /api/orgs/{slug}/teams/{team_slug}/members | Add a member to a team
[**listOrgMembers**](MembersApi.md#listorgmembers) | **GET** /api/orgs/{slug}/members | List organization members
[**listTeamMembers**](MembersApi.md#listteammembers) | **GET** /api/orgs/{slug}/teams/{team_slug}/members | List team members
[**removeOrgMember**](MembersApi.md#removeorgmember) | **DELETE** /api/orgs/{slug}/members/{username} | Remove a member from an organization
[**removeTeamMember**](MembersApi.md#removeteammember) | **DELETE** /api/orgs/{slug}/teams/{team_slug}/members/{username} | Remove a member from a team


# **addOrgMember**
> AddOrgMember200Response addOrgMember(slug, addMemberRequest)

Add a member to an organization

Requires org owner role.

### Example
```dart
import 'package:sarno_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MembersApi();
final slug = slug_example; // String | Organization URL-safe slug
final addMemberRequest = AddMemberRequest(); // AddMemberRequest | 

try {
    final result = api_instance.addOrgMember(slug, addMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling MembersApi->addOrgMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **addMemberRequest** | [**AddMemberRequest**](AddMemberRequest.md)|  | 

### Return type

[**AddOrgMember200Response**](AddOrgMember200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTeamMember**
> AddTeamMember200Response addTeamMember(slug, teamSlug, addMemberRequest)

Add a member to a team

Requires team maintainer or org owner role.

### Example
```dart
import 'package:sarno_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MembersApi();
final slug = slug_example; // String | Organization URL-safe slug
final teamSlug = teamSlug_example; // String | Team URL-safe slug (unique within org)
final addMemberRequest = AddMemberRequest(); // AddMemberRequest | 

try {
    final result = api_instance.addTeamMember(slug, teamSlug, addMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling MembersApi->addTeamMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **teamSlug** | **String**| Team URL-safe slug (unique within org) | 
 **addMemberRequest** | [**AddMemberRequest**](AddMemberRequest.md)|  | 

### Return type

[**AddTeamMember200Response**](AddTeamMember200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrgMembers**
> ListOrgMembers200Response listOrgMembers(slug)

List organization members

### Example
```dart
import 'package:sarno_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MembersApi();
final slug = slug_example; // String | Organization URL-safe slug

try {
    final result = api_instance.listOrgMembers(slug);
    print(result);
} catch (e) {
    print('Exception when calling MembersApi->listOrgMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 

### Return type

[**ListOrgMembers200Response**](ListOrgMembers200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeamMembers**
> ListTeamMembers200Response listTeamMembers(slug, teamSlug)

List team members

### Example
```dart
import 'package:sarno_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MembersApi();
final slug = slug_example; // String | Organization URL-safe slug
final teamSlug = teamSlug_example; // String | Team URL-safe slug (unique within org)

try {
    final result = api_instance.listTeamMembers(slug, teamSlug);
    print(result);
} catch (e) {
    print('Exception when calling MembersApi->listTeamMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **teamSlug** | **String**| Team URL-safe slug (unique within org) | 

### Return type

[**ListTeamMembers200Response**](ListTeamMembers200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeOrgMember**
> RemoveOrgMember200Response removeOrgMember(slug, username)

Remove a member from an organization

Requires org owner role.

### Example
```dart
import 'package:sarno_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MembersApi();
final slug = slug_example; // String | Organization URL-safe slug
final username = username_example; // String | 

try {
    final result = api_instance.removeOrgMember(slug, username);
    print(result);
} catch (e) {
    print('Exception when calling MembersApi->removeOrgMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **username** | **String**|  | 

### Return type

[**RemoveOrgMember200Response**](RemoveOrgMember200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTeamMember**
> RemoveOrgMember200Response removeTeamMember(slug, teamSlug, username)

Remove a member from a team

Requires team maintainer or org owner role.

### Example
```dart
import 'package:sarno_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MembersApi();
final slug = slug_example; // String | Organization URL-safe slug
final teamSlug = teamSlug_example; // String | Team URL-safe slug (unique within org)
final username = username_example; // String | 

try {
    final result = api_instance.removeTeamMember(slug, teamSlug, username);
    print(result);
} catch (e) {
    print('Exception when calling MembersApi->removeTeamMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **teamSlug** | **String**| Team URL-safe slug (unique within org) | 
 **username** | **String**|  | 

### Return type

[**RemoveOrgMember200Response**](RemoveOrgMember200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

