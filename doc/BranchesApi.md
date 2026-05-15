# sarno_client.api.BranchesApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mergeBranches**](BranchesApi.md#mergebranches) | **POST** /api/projects/{project_id}/merges | Merge a source branch into a target branch within a project


# **mergeBranches**
> MergeBranches200Response mergeBranches(projectId, mergeRequest)

Merge a source branch into a target branch within a project

Three-way merge with conflict detection. Returns 200 on a clean merge (with `merge_event_id`, `events_replayed`, `base_event_id`), 409 with a `conflicts` array on structural conflict. Caller must have the role required by the target branch's `ref_protection` rule (default: `write` on `main`). The orchestrator's `/apply` flow points here to promote an agent's working branch (`agent-<discussion_id>`) into `main`. See `docs/agent_branch_merge.md`.

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

final api_instance = BranchesApi();
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final mergeRequest = MergeRequest(); // MergeRequest | 

try {
    final result = api_instance.mergeBranches(projectId, mergeRequest);
    print(result);
} catch (e) {
    print('Exception when calling BranchesApi->mergeBranches: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **mergeRequest** | [**MergeRequest**](MergeRequest.md)|  | 

### Return type

[**MergeBranches200Response**](MergeBranches200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

