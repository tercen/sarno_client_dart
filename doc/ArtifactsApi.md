# sarno_client.api.ArtifactsApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addArtifactComment**](ArtifactsApi.md#addartifactcomment) | **POST** /api/artifacts/{document_id}/comments | Add a comment
[**checkArtifactShare**](ArtifactsApi.md#checkartifactshare) | **POST** /api/artifacts/{document_id}/share_check | Dry-run: would a named user actually be able to open this artifact?
[**createArtifact**](ArtifactsApi.md#createartifact) | **POST** /api/artifacts | Create a new Sarno Artifact
[**deleteArtifact**](ArtifactsApi.md#deleteartifact) | **DELETE** /api/artifacts/{document_id} | Delete an artifact outright
[**deleteArtifactComment**](ArtifactsApi.md#deleteartifactcomment) | **DELETE** /api/artifacts/{document_id}/comments/{comment_id} | Delete a comment
[**deleteArtifactCommentForm**](ArtifactsApi.md#deleteartifactcommentform) | **POST** /artifacts/{document_id}/comments/{comment_id}/delete | A comment's Delete button (browser-facing)
[**getArtifact**](ArtifactsApi.md#getartifact) | **GET** /api/artifacts/{document_id} | Get an artifact's summary, including whether the caller could open it
[**getArtifactRef**](ArtifactsApi.md#getartifactref) | **GET** /artifacts/{document_id}/refs/{key} | Fetch one referenced image (browser-facing, grant-gated)
[**listArtifactComments**](ArtifactsApi.md#listartifactcomments) | **GET** /api/artifacts/{document_id}/comments | List an artifact's comments, oldest first
[**listArtifacts**](ArtifactsApi.md#listartifacts) | **GET** /api/artifacts | List the caller's own artifacts
[**postArtifactCommentForm**](ArtifactsApi.md#postartifactcommentform) | **POST** /artifacts/{document_id}/comments | The artifact page's comment form (browser-facing)
[**resolveArtifactComment**](ArtifactsApi.md#resolveartifactcomment) | **POST** /api/artifacts/{document_id}/comments/{comment_id}/resolve | Resolve or reopen a comment
[**shareArtifact**](ArtifactsApi.md#shareartifact) | **POST** /api/artifacts/{document_id}/share | Add a collaborator on the artifact's own project, then report whether they could actually open it
[**updateArtifact**](ArtifactsApi.md#updateartifact) | **PUT** /api/artifacts/{document_id} | Regenerate an artifact in place
[**viewArtifact**](ArtifactsApi.md#viewartifact) | **GET** /artifacts/{document_id} | Render an artifact page (browser-facing)


# **addArtifactComment**
> ArtifactComment addArtifactComment(documentId, addArtifactCommentRequest)

Add a comment

Same access as reading. Plain text, 1-4000 bytes; `ref_key` must be one of the artifact's references. At most 1000 comments per artifact (429 past that).

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final addArtifactCommentRequest = AddArtifactCommentRequest(); // AddArtifactCommentRequest | 

try {
    final result = api_instance.addArtifactComment(documentId, addArtifactCommentRequest);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->addArtifactComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **addArtifactCommentRequest** | [**AddArtifactCommentRequest**](AddArtifactCommentRequest.md)|  | 

### Return type

[**ArtifactComment**](ArtifactComment.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkArtifactShare**
> CheckArtifactShare200Response checkArtifactShare(documentId, artifactShareCheckRequest)

Dry-run: would a named user actually be able to open this artifact?

Owner-facing only (requires Admin on the artifact's project) — reports, per source project the artifact references, whether the named user has Read. Sharing the artifact document alone does not share what it references; see doc/artifacts.md.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final artifactShareCheckRequest = ArtifactShareCheckRequest(); // ArtifactShareCheckRequest | 

try {
    final result = api_instance.checkArtifactShare(documentId, artifactShareCheckRequest);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->checkArtifactShare: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **artifactShareCheckRequest** | [**ArtifactShareCheckRequest**](ArtifactShareCheckRequest.md)|  | 

### Return type

[**CheckArtifactShare200Response**](CheckArtifactShare200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createArtifact**
> CreateArtifact200Response createArtifact(createArtifactRequest)

Create a new Sarno Artifact

Sanitizes body_html, validates and snapshots each reference (author must have Read on every cited document), lazily creates the caller's own artifact project if needed, seals and stores the manifest. See doc/artifacts.md.

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

final api_instance = ArtifactsApi();
final createArtifactRequest = CreateArtifactRequest(); // CreateArtifactRequest | 

try {
    final result = api_instance.createArtifact(createArtifactRequest);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->createArtifact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createArtifactRequest** | [**CreateArtifactRequest**](CreateArtifactRequest.md)|  | 

### Return type

[**CreateArtifact200Response**](CreateArtifact200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArtifact**
> DeleteGraph200Response deleteArtifact(documentId)

Delete an artifact outright

Requires Admin on the artifact's own project (same bar as sharing). Deletes the artifact's dedicated project; referenced documents and their own projects are untouched. Irreversible.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteArtifact(documentId);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->deleteArtifact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**DeleteGraph200Response**](DeleteGraph200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArtifactComment**
> DeleteArtifactComment200Response deleteArtifactComment(documentId, commentId)

Delete a comment

The comment's author or whoever can administer the artifact.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final commentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteArtifactComment(documentId, commentId);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->deleteArtifactComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **commentId** | **String**|  | 

### Return type

[**DeleteArtifactComment200Response**](DeleteArtifactComment200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArtifactCommentForm**
> deleteArtifactCommentForm(documentId, commentId, v)

A comment's Delete button (browser-facing)

Form post with the page's view grant `v`; author or artifact admin only.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final commentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final v = v_example; // String | 

try {
    api_instance.deleteArtifactCommentForm(documentId, commentId, v);
} catch (e) {
    print('Exception when calling ArtifactsApi->deleteArtifactCommentForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **commentId** | **String**|  | 
 **v** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtifact**
> GetArtifact200Response getArtifact(documentId)

Get an artifact's summary, including whether the caller could open it

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getArtifact(documentId);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->getArtifact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetArtifact200Response**](GetArtifact200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtifactRef**
> MultipartFile getArtifactRef(documentId, key, g, page, print)

Fetch one referenced image (browser-facing, grant-gated)

The `g` grant proves the shell already ran the gate once for this viewer/key/artifact; the ACL is still independently re-checked against the reference's CURRENT project on every call (TOCTOU). Only an image-mime allowlist is served inline; anything else is refused, except a table reference (`render.as = table`), whose requested `page` the board renders to PNG from rows fetched from the worker holding the Parquet source (only the row groups that page needs are read; the file is never copied to the board).

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final key = key_example; // String | 
final g = g_example; // String | Signed, short-lived per-viewer-per-reference grant minted by GET /artifacts/{document_id}.
final page = 56; // int | Table references only: the 1-based page to render. 404 past the table's last page.
final print = print_example; // String | Table references only: pages of the printable version's fixed 32 rows instead of the author's page size.

try {
    final result = api_instance.getArtifactRef(documentId, key, g, page, print);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->getArtifactRef: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **key** | **String**|  | 
 **g** | **String**| Signed, short-lived per-viewer-per-reference grant minted by GET /artifacts/{document_id}. | 
 **page** | **int**| Table references only: the 1-based page to render. 404 past the table's last page. | [optional] [default to 1]
 **print** | **String**| Table references only: pages of the printable version's fixed 32 rows instead of the author's page size. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png, image/jpeg, image/gif, image/webp

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listArtifactComments**
> ArtifactCommentList listArtifactComments(documentId)

List an artifact's comments, oldest first

Anyone who can open the artifact (Read on its project plus the all-or-nothing reference gate) can read its comments. 404 otherwise, 403 if the artifact is readable but something it cites is not.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.listArtifactComments(documentId);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->listArtifactComments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**ArtifactCommentList**](ArtifactCommentList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listArtifacts**
> ListArtifacts200Response listArtifacts()

List the caller's own artifacts

Every artifact document in the caller's own lazily-created artifact project.

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

final api_instance = ArtifactsApi();

try {
    final result = api_instance.listArtifacts();
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->listArtifacts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListArtifacts200Response**](ListArtifacts200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postArtifactCommentForm**
> postArtifactCommentForm(documentId, v, body, ref)

The artifact page's comment form (browser-facing)

`application/x-www-form-urlencoded`: `v` (the page's view grant — the browser's only credential; no cookies), `body`, optional `ref`, plus the page's own `branch`/`p.<key>` parameters, which the 303 redirect back to the page keeps.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final v = v_example; // String | 
final body = body_example; // String | 
final ref = ref_example; // String | 

try {
    api_instance.postArtifactCommentForm(documentId, v, body, ref);
} catch (e) {
    print('Exception when calling ArtifactsApi->postArtifactCommentForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **v** | **String**|  | 
 **body** | **String**|  | 
 **ref** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveArtifactComment**
> ArtifactComment resolveArtifactComment(documentId, commentId, resolveArtifactCommentRequest)

Resolve or reopen a comment

The comment's author or whoever can administer the artifact. `resolved` defaults to true; false reopens.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final commentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final resolveArtifactCommentRequest = ResolveArtifactCommentRequest(); // ResolveArtifactCommentRequest | 

try {
    final result = api_instance.resolveArtifactComment(documentId, commentId, resolveArtifactCommentRequest);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->resolveArtifactComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **commentId** | **String**|  | 
 **resolveArtifactCommentRequest** | [**ResolveArtifactCommentRequest**](ResolveArtifactCommentRequest.md)|  | [optional] 

### Return type

[**ArtifactComment**](ArtifactComment.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareArtifact**
> ShareArtifact200Response shareArtifact(documentId, artifactShareRequest)

Add a collaborator on the artifact's own project, then report whether they could actually open it

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final artifactShareRequest = ArtifactShareRequest(); // ArtifactShareRequest | 

try {
    final result = api_instance.shareArtifact(documentId, artifactShareRequest);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->shareArtifact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **artifactShareRequest** | [**ArtifactShareRequest**](ArtifactShareRequest.md)|  | 

### Return type

[**ShareArtifact200Response**](ShareArtifact200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArtifact**
> CreateArtifact200Response updateArtifact(documentId, createArtifactRequest)

Regenerate an artifact in place

A doc_update on the SAME document id, not a new document — the share URL survives regeneration, and the prior version is preserved in the document's history. Requires Write on the artifact's project.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createArtifactRequest = CreateArtifactRequest(); // CreateArtifactRequest | 

try {
    final result = api_instance.updateArtifact(documentId, createArtifactRequest);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->updateArtifact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **createArtifactRequest** | [**CreateArtifactRequest**](CreateArtifactRequest.md)|  | 

### Return type

[**CreateArtifact200Response**](CreateArtifact200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewArtifact**
> String viewArtifact(documentId, token, v, print, branch)

Render an artifact page (browser-facing)

No script ever runs on this page. Every image reference is rewritten server-side into a short-lived, per-viewer signed grant URL. Every denial — the artifact doesn't exist, the caller can't read it, or the caller can read it but not everything it cites — returns the SAME generic response; see doc/artifacts.md's all-or-nothing gate section. Accepts `?token=<bearer>` for a plain browser navigation with no Authorization header (mirrors the app-serving `?token=` promotion). Table references render as a scrollable page image plus pager links; `?p.<key>=<n>` selects each table's 1-based page (clamped to the table's range), one parameter per table.

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

final api_instance = ArtifactsApi();
final documentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final token = token_example; // String | Bearer token, for a plain navigation with no Authorization header.
final v = v_example; // String | View grant carried by the page's own table pager links in place of the viewer's token: one artifact, one viewer, about an hour. Identifies the viewer only; every access check still runs. Ignored when an Authorization header is present.
final print = print_example; // String | The printable version: each table as stacked 32-row images up to its first 1,000 rows, comments without forms. Save it as PDF with the browser's Print.
final branch = branch_example; // String | 

try {
    final result = api_instance.viewArtifact(documentId, token, v, print, branch);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactsApi->viewArtifact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **token** | **String**| Bearer token, for a plain navigation with no Authorization header. | [optional] 
 **v** | **String**| View grant carried by the page's own table pager links in place of the viewer's token: one artifact, one viewer, about an hour. Identifies the viewer only; every access check still runs. Ignored when an Authorization header is present. | [optional] 
 **print** | **String**| The printable version: each table as stacked 32-row images up to its first 1,000 rows, comments without forms. Save it as PDF with the browser's Print. | [optional] 
 **branch** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

