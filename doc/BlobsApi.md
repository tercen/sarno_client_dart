# sarno_client.api.BlobsApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serveBlob**](BlobsApi.md#serveblob) | **GET** /blob/{hash} | Serve blob content by hash
[**uploadBlob**](BlobsApi.md#uploadblob) | **POST** /api/upload | Upload a file as a blob


# **serveBlob**
> MultipartFile serveBlob(hash)

Serve blob content by hash

Unauthenticated. Hash may include extension (e.g. hash.png). Tries local cache, then P2P fetch from providers.

### Example
```dart
import 'package:sarno_client/api.dart';

final api_instance = BlobsApi();
final hash = hash_example; // String | Blake3 hash, optionally with file extension

try {
    final result = api_instance.serveBlob(hash);
    print(result);
} catch (e) {
    print('Exception when calling BlobsApi->serveBlob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Blake3 hash, optionally with file extension | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadBlob**
> UploadBlob200Response uploadBlob(file)

Upload a file as a blob

Accepts multipart/form-data with a `file` field. Returns blake3 hash, filename, size, and MIME type. Content-addressed: uploading the same file twice returns the same hash.

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

final api_instance = BlobsApi();
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final result = api_instance.uploadBlob(file);
    print(result);
} catch (e) {
    print('Exception when calling BlobsApi->uploadBlob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | 

### Return type

[**UploadBlob200Response**](UploadBlob200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

