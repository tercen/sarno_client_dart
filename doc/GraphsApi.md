# sarno_client.api.GraphsApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGraph**](GraphsApi.md#creategraph) | **POST** /api/graph | Create a new computation graph
[**deleteGraph**](GraphsApi.md#deletegraph) | **DELETE** /api/graph/{id} | Delete a graph
[**getGraph**](GraphsApi.md#getgraph) | **GET** /api/graph/{id} | Get current graph state
[**getGraphAtRevision**](GraphsApi.md#getgraphatrevision) | **GET** /api/graph/{id}/at/{rev} | Get graph state at a specific revision (time travel)
[**getGraphHistory**](GraphsApi.md#getgraphhistory) | **GET** /api/graph/{id}/history | Get patch history for a graph
[**listGraphs**](GraphsApi.md#listgraphs) | **GET** /api/projects/{project_id}/graphs | List graphs in a project
[**patchGraph**](GraphsApi.md#patchgraph) | **PATCH** /api/graph/{id} | Apply JSON Patch (RFC 6902) to graph
[**submitGraph**](GraphsApi.md#submitgraph) | **POST** /api/graph/{id}/submit | Submit graph for execution


# **createGraph**
> CreateGraph200Response createGraph(graph)

Create a new computation graph

Requires Write permission on the target project (project_id in graph body).

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

final api_instance = GraphsApi();
final graph = Graph(); // Graph | 

try {
    final result = api_instance.createGraph(graph);
    print(result);
} catch (e) {
    print('Exception when calling GraphsApi->createGraph: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graph** | [**Graph**](Graph.md)|  | 

### Return type

[**CreateGraph200Response**](CreateGraph200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGraph**
> DeleteGraph200Response deleteGraph(id)

Delete a graph

Requires Admin permission on the graph's project.

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

final api_instance = GraphsApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteGraph(id);
    print(result);
} catch (e) {
    print('Exception when calling GraphsApi->deleteGraph: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DeleteGraph200Response**](DeleteGraph200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGraph**
> GetGraph200Response getGraph(id, branch)

Get current graph state

Requires Read permission on the graph's project. When `?branch=<name>` is set, returns the graph content materialised from that branch's event-DAG (patches applied through the branch's tip). Without `branch`, returns the legacy project-wide row.

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

final api_instance = GraphsApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final branch = branch_example; // String | Materialise the graph from this branch's event-DAG. Nodes/edges/patches diverge across branches; the legacy row mixes them. 404 when the graph isn't present on the branch.

try {
    final result = api_instance.getGraph(id, branch);
    print(result);
} catch (e) {
    print('Exception when calling GraphsApi->getGraph: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **branch** | **String**| Materialise the graph from this branch's event-DAG. Nodes/edges/patches diverge across branches; the legacy row mixes them. 404 when the graph isn't present on the branch. | [optional] 

### Return type

[**GetGraph200Response**](GetGraph200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGraphAtRevision**
> GetGraph200Response getGraphAtRevision(id, rev, branch)

Get graph state at a specific revision (time travel)

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

final api_instance = GraphsApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final rev = 789; // int | 
final branch = branch_example; // String | Branch-scope the time-travel lookup. Accepted in the schema for #93 surface parity; revisions today are global per-graph, not per-branch — per-branch revisions are the natural follow-up alongside `graph_patches` carrying a branch column.

try {
    final result = api_instance.getGraphAtRevision(id, rev, branch);
    print(result);
} catch (e) {
    print('Exception when calling GraphsApi->getGraphAtRevision: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **rev** | **int**|  | 
 **branch** | **String**| Branch-scope the time-travel lookup. Accepted in the schema for #93 surface parity; revisions today are global per-graph, not per-branch — per-branch revisions are the natural follow-up alongside `graph_patches` carrying a branch column. | [optional] 

### Return type

[**GetGraph200Response**](GetGraph200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGraphHistory**
> GetGraphHistory200Response getGraphHistory(id, branch)

Get patch history for a graph

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

final api_instance = GraphsApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final branch = branch_example; // String | Branch-scope the history. Accepted in the schema for #93 surface parity; behaviour-wise the response is still cross-branch — branch-scoped history is the natural follow-up since `graph_patches` rows don't carry a branch column yet.

try {
    final result = api_instance.getGraphHistory(id, branch);
    print(result);
} catch (e) {
    print('Exception when calling GraphsApi->getGraphHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **branch** | **String**| Branch-scope the history. Accepted in the schema for #93 surface parity; behaviour-wise the response is still cross-branch — branch-scoped history is the natural follow-up since `graph_patches` rows don't carry a branch column yet. | [optional] 

### Return type

[**GetGraphHistory200Response**](GetGraphHistory200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGraphs**
> ListGraphs200Response listGraphs(projectId, folderId, recursive, branch)

List graphs in a project

Requires Read permission on the project. Default scope is graphs at the project root (folder_id IS NULL). Pass `folder_id` to scope to a specific folder, or `recursive=true` to return every graph in the project regardless of folder.

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

final api_instance = GraphsApi();
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by folder (omit for project root)
final recursive = true; // bool | Return every graph in the project regardless of folder. Overrides `folder_id`.
final branch = branch_example; // String | Filter to graphs visible from this branch's event-DAG history. When omitted, returns the legacy project-wide listing (rows across every branch).

try {
    final result = api_instance.listGraphs(projectId, folderId, recursive, branch);
    print(result);
} catch (e) {
    print('Exception when calling GraphsApi->listGraphs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **folderId** | **String**| Filter by folder (omit for project root) | [optional] 
 **recursive** | **bool**| Return every graph in the project regardless of folder. Overrides `folder_id`. | [optional] 
 **branch** | **String**| Filter to graphs visible from this branch's event-DAG history. When omitted, returns the legacy project-wide listing (rows across every branch). | [optional] 

### Return type

[**ListGraphs200Response**](ListGraphs200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchGraph**
> PatchGraph200Response patchGraph(id, patchRequest)

Apply JSON Patch (RFC 6902) to graph

Requires Write permission on the graph's project. Uses optimistic locking via revision.

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

final api_instance = GraphsApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final patchRequest = PatchRequest(); // PatchRequest | 

try {
    final result = api_instance.patchGraph(id, patchRequest);
    print(result);
} catch (e) {
    print('Exception when calling GraphsApi->patchGraph: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **patchRequest** | [**PatchRequest**](PatchRequest.md)|  | 

### Return type

[**PatchGraph200Response**](PatchGraph200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitGraph**
> SubmitGraph200Response submitGraph(id)

Submit graph for execution

Requires Write permission. Board walks DAG topologically, posts each node as a task.

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

final api_instance = GraphsApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.submitGraph(id);
    print(result);
} catch (e) {
    print('Exception when calling GraphsApi->submitGraph: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**SubmitGraph200Response**](SubmitGraph200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

