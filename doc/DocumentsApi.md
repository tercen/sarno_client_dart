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
[**getDocumentSchema**](DocumentsApi.md#getdocumentschema) | **GET** /api/documents/{document_id}/schema | Get a document's table schema
[**listDocuments**](DocumentsApi.md#listdocuments) | **GET** /api/projects/{project_id}/documents | List documents in a project
[**peekDocument**](DocumentsApi.md#peekdocument) | **GET** /api/documents/{document_id}/peek | Peek into a document's table data
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

# **getDocumentSchema**
> GetDocumentSchema200Response getDocumentSchema(documentId)

Get a document's table schema

Returns the column schema and total row count for the document's underlying parquet table — without reading row data. Cost is O(footer size), so this scales to multi-million-row tables (the row count comes from parquet's footer metadata, not by scanning rows).  Auth: caller needs Read on the document's project.  When the blob is on a worker (operator outputs), falls back to a row-bounded peek with `max_rows=0`. Local-path calls are cheap regardless of table size; worker fallback carries one P2P round-trip plus a single batch decode.

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
    final result = api_instance.getDocumentSchema(documentId);
    print(result);
} catch (e) {
    print('Exception when calling DocumentsApi->getDocumentSchema: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**| Document UUID | 

### Return type

[**GetDocumentSchema200Response**](GetDocumentSchema200Response.md)

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

# **peekDocument**
> PeekDocument200Response peekDocument(documentId, maxRows, columns)

Peek into a document's table data

Returns a JSON projection of the document's underlying TableData (parquet/columnar). Caller passes the document UUID (the public handle); the blob hash behind it is internal. Use this for SQL-`SELECT col1, col2 LIMIT N`-shaped reads against operator outputs or uploaded data documents.  Auth: caller needs Read on the document's project.  The board resolves the blob locally if present; otherwise it P2P-fetches from a registered provider (typically the worker that produced the operator output).

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
final maxRows = 56; // int | Row count cap. Default 20, hard cap 1000.
final columns = columns_example; // String | Comma-separated column names. Absent columns are silently dropped (mirrors SQL projection).

try {
    final result = api_instance.peekDocument(documentId, maxRows, columns);
    print(result);
} catch (e) {
    print('Exception when calling DocumentsApi->peekDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**| Document UUID | 
 **maxRows** | **int**| Row count cap. Default 20, hard cap 1000. | [optional] [default to 20]
 **columns** | **String**| Comma-separated column names. Absent columns are silently dropped (mirrors SQL projection). | [optional] 

### Return type

[**PeekDocument200Response**](PeekDocument200Response.md)

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

