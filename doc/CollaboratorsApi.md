# tercen_client.api.CollaboratorsApi

## Load the API package
```dart
import 'package:tercen_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProjectCollaborator**](CollaboratorsApi.md#addprojectcollaborator) | **POST** /api/projects/{project_id}/collaborators | Add a collaborator to a project
[**listProjectCollaborators**](CollaboratorsApi.md#listprojectcollaborators) | **GET** /api/projects/{project_id}/collaborators | List project collaborators
[**removeProjectCollaborator**](CollaboratorsApi.md#removeprojectcollaborator) | **DELETE** /api/projects/{project_id}/collaborators/{username} | Remove a collaborator from a project


# **addProjectCollaborator**
> AddProjectCollaborator200Response addProjectCollaborator(projectId, addCollaboratorRequest)

Add a collaborator to a project

Requires Admin permission on the project.

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

final api_instance = CollaboratorsApi();
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final addCollaboratorRequest = AddCollaboratorRequest(); // AddCollaboratorRequest | 

try {
    final result = api_instance.addProjectCollaborator(projectId, addCollaboratorRequest);
    print(result);
} catch (e) {
    print('Exception when calling CollaboratorsApi->addProjectCollaborator: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **addCollaboratorRequest** | [**AddCollaboratorRequest**](AddCollaboratorRequest.md)|  | 

### Return type

[**AddProjectCollaborator200Response**](AddProjectCollaborator200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProjectCollaborators**
> ListProjectCollaborators200Response listProjectCollaborators(projectId)

List project collaborators

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

final api_instance = CollaboratorsApi();
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.listProjectCollaborators(projectId);
    print(result);
} catch (e) {
    print('Exception when calling CollaboratorsApi->listProjectCollaborators: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 

### Return type

[**ListProjectCollaborators200Response**](ListProjectCollaborators200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeProjectCollaborator**
> RemoveOrgMember200Response removeProjectCollaborator(projectId, username)

Remove a collaborator from a project

Requires Admin permission on the project.

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

final api_instance = CollaboratorsApi();
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final username = username_example; // String | 

try {
    final result = api_instance.removeProjectCollaborator(projectId, username);
    print(result);
} catch (e) {
    print('Exception when calling CollaboratorsApi->removeProjectCollaborator: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **username** | **String**|  | 

### Return type

[**RemoveOrgMember200Response**](RemoveOrgMember200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

