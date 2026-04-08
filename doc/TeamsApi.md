# tercen_client.api.TeamsApi

## Load the API package
```dart
import 'package:tercen_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTeam**](TeamsApi.md#createteam) | **POST** /api/orgs/{slug}/teams | Create a team in an organization
[**deleteTeam**](TeamsApi.md#deleteteam) | **DELETE** /api/orgs/{slug}/teams/{team_slug} | Delete a team
[**getTeam**](TeamsApi.md#getteam) | **GET** /api/orgs/{slug}/teams/{team_slug} | Get team by slug
[**listTeams**](TeamsApi.md#listteams) | **GET** /api/orgs/{slug}/teams | List teams in an organization
[**removeTeamProjectAccess**](TeamsApi.md#removeteamprojectaccess) | **DELETE** /api/orgs/{slug}/teams/{team_slug}/projects/{project_id} | Remove team access to a project
[**setTeamProjectAccess**](TeamsApi.md#setteamprojectaccess) | **PUT** /api/orgs/{slug}/teams/{team_slug}/projects/{project_id} | Set team access level on a project


# **createTeam**
> CreateTeam200Response createTeam(slug, createTeamRequest)

Create a team in an organization

Requires org owner role.

### Example
```dart
import 'package:tercen_client/api.dart';
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

final api_instance = TeamsApi();
final slug = slug_example; // String | Organization URL-safe slug
final createTeamRequest = CreateTeamRequest(); // CreateTeamRequest | 

try {
    final result = api_instance.createTeam(slug, createTeamRequest);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->createTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **createTeamRequest** | [**CreateTeamRequest**](CreateTeamRequest.md)|  | 

### Return type

[**CreateTeam200Response**](CreateTeam200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTeam**
> DeleteOrganization200Response deleteTeam(slug, teamSlug)

Delete a team

Requires org owner role. Cascades to team memberships and project access.

### Example
```dart
import 'package:tercen_client/api.dart';
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

final api_instance = TeamsApi();
final slug = slug_example; // String | Organization URL-safe slug
final teamSlug = teamSlug_example; // String | Team URL-safe slug (unique within org)

try {
    final result = api_instance.deleteTeam(slug, teamSlug);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->deleteTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **teamSlug** | **String**| Team URL-safe slug (unique within org) | 

### Return type

[**DeleteOrganization200Response**](DeleteOrganization200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeam**
> CreateTeam200Response getTeam(slug, teamSlug)

Get team by slug

### Example
```dart
import 'package:tercen_client/api.dart';
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

final api_instance = TeamsApi();
final slug = slug_example; // String | Organization URL-safe slug
final teamSlug = teamSlug_example; // String | Team URL-safe slug (unique within org)

try {
    final result = api_instance.getTeam(slug, teamSlug);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->getTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **teamSlug** | **String**| Team URL-safe slug (unique within org) | 

### Return type

[**CreateTeam200Response**](CreateTeam200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeams**
> ListTeams200Response listTeams(slug)

List teams in an organization

### Example
```dart
import 'package:tercen_client/api.dart';
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

final api_instance = TeamsApi();
final slug = slug_example; // String | Organization URL-safe slug

try {
    final result = api_instance.listTeams(slug);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->listTeams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 

### Return type

[**ListTeams200Response**](ListTeams200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTeamProjectAccess**
> RemoveTeamProjectAccess200Response removeTeamProjectAccess(slug, teamSlug, projectId)

Remove team access to a project

### Example
```dart
import 'package:tercen_client/api.dart';
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

final api_instance = TeamsApi();
final slug = slug_example; // String | Organization URL-safe slug
final teamSlug = teamSlug_example; // String | Team URL-safe slug (unique within org)
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.removeTeamProjectAccess(slug, teamSlug, projectId);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->removeTeamProjectAccess: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **teamSlug** | **String**| Team URL-safe slug (unique within org) | 
 **projectId** | **String**|  | 

### Return type

[**RemoveTeamProjectAccess200Response**](RemoveTeamProjectAccess200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setTeamProjectAccess**
> SetTeamProjectAccess200Response setTeamProjectAccess(slug, teamSlug, projectId, setTeamProjectAccessRequest)

Set team access level on a project

Requires org owner or project admin.

### Example
```dart
import 'package:tercen_client/api.dart';
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

final api_instance = TeamsApi();
final slug = slug_example; // String | Organization URL-safe slug
final teamSlug = teamSlug_example; // String | Team URL-safe slug (unique within org)
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final setTeamProjectAccessRequest = SetTeamProjectAccessRequest(); // SetTeamProjectAccessRequest | 

try {
    final result = api_instance.setTeamProjectAccess(slug, teamSlug, projectId, setTeamProjectAccessRequest);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->setTeamProjectAccess: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Organization URL-safe slug | 
 **teamSlug** | **String**| Team URL-safe slug (unique within org) | 
 **projectId** | **String**|  | 
 **setTeamProjectAccessRequest** | [**SetTeamProjectAccessRequest**](SetTeamProjectAccessRequest.md)|  | 

### Return type

[**SetTeamProjectAccess200Response**](SetTeamProjectAccess200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

