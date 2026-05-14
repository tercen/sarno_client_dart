# sarno_client.api.DocumentsApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDocument**](DocumentsApi.md#createdocument) | **POST** /api/projects/{project_id}/documents | Create a document in a project
[**deleteDocument**](DocumentsApi.md#deletedocument) | **DELETE** /api/documents/{document_id} | Delete a document
[**downloadDocument**](DocumentsApi.md#downloaddocument) | **GET** /api/documents/{document_id}/download | Download a document's bytes
[**getDocument**](DocumentsApi.md#getdocument) | **GET** /api/documents/{document_id} | Get document metadata
[**listDocuments**](DocumentsApi.md#listdocuments) | **GET** /api/projects/{project_id}/documents | List documents in a project
[**updateDocument**](DocumentsApi.md#updatedocument) | **PUT** /api/documents/{document_id} | Update a document (new blob version)


# **createDocument**
> CreateDocument200Response createDocument(projectId, createDocumentRequest)

Create a document in a project

Requires Write permission on the project. Links a blob to the project/folder hierarchy.

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

final api_instance = DocumentsApi();
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createDocumentRequest = CreateDocumentRequest(); // CreateDocumentRequest | 

try {
    final result = api_instance.createDocument(projectId, createDocumentRequest);
    print(result);
} catch (e) {
    print('Exception when calling DocumentsApi->createDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **createDocumentRequest** | [**CreateDocumentRequest**](CreateDocumentRequest.md)|  | 

### Return type

[**CreateDocument200Response**](CreateDocument200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocument**
> DeleteOrganization200Response deleteDocument(documentId)

Delete a document

Requires Write permission on the project.

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

final api_instance = DocumentsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteDocument(documentId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentsApi->deleteDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**DeleteOrganization200Response**](DeleteOrganization200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadDocument**
> MultipartFile downloadDocument(documentId)

Download a document's bytes

Streams the document's blob with `Content-Type` set from the document's `mime_type` and `Content-Disposition: attachment` carrying the document's name. The byte source is resolved via the same internal path the server uses everywhere — local board store first, then P2P fetch from a registered provider. This is the canonical public path for downloading user-visible artifacts. Raw content-addressed access (by blob hash) is reserved for internal/substrate use only and is not part of the OpenAPI surface.

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

final api_instance = DocumentsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Document UUID

try {
    final result = api_instance.downloadDocument(documentId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentsApi->downloadDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**| Document UUID | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocument**
> CreateDocument200Response getDocument(documentId)

Get document metadata

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

final api_instance = DocumentsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDocument(documentId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentsApi->getDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**CreateDocument200Response**](CreateDocument200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocuments**
> ListDocuments200Response listDocuments(projectId, folderId)

List documents in a project

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

final api_instance = DocumentsApi();
final projectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final folderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by folder (omit for project root)

try {
    final result = api_instance.listDocuments(projectId, folderId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentsApi->listDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **folderId** | **String**| Filter by folder (omit for project root) | [optional] 

### Return type

[**ListDocuments200Response**](ListDocuments200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDocument**
> CreateDocument200Response updateDocument(documentId, updateDocumentRequest)

Update a document (new blob version)

Requires Write permission. Updates the blob_hash, mime_type, and size.

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

final api_instance = DocumentsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateDocumentRequest = UpdateDocumentRequest(); // UpdateDocumentRequest | 

try {
    final result = api_instance.updateDocument(documentId, updateDocumentRequest);
    print(result);
} catch (e) {
    print('Exception when calling DocumentsApi->updateDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **updateDocumentRequest** | [**UpdateDocumentRequest**](UpdateDocumentRequest.md)|  | 

### Return type

[**CreateDocument200Response**](CreateDocument200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

