# tercen_client.api.BlobsApi

## Load the API package
```dart
import 'package:tercen_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serveBlob**](BlobsApi.md#serveblob) | **GET** /blob/{hash} | Serve blob content by hash


# **serveBlob**
> MultipartFile serveBlob(hash)

Serve blob content by hash

Unauthenticated. Hash may include extension (e.g. hash.png). Tries local cache, then P2P fetch from providers.

### Example
```dart
import 'package:tercen_client/api.dart';

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

