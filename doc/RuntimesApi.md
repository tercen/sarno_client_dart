# tercen_client.api.RuntimesApi

## Load the API package
```dart
import 'package:tercen_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listRuntimes**](RuntimesApi.md#listruntimes) | **GET** /api/runtimes | List runtimes
[**registerRuntime**](RuntimesApi.md#registerruntime) | **POST** /api/runtimes | Register a runtime
[**resolveRuntime**](RuntimesApi.md#resolveruntime) | **GET** /api/runtimes/{org}/{name} | Resolve runtime (latest version)
[**resolveRuntimeVersion**](RuntimesApi.md#resolveruntimeversion) | **GET** /api/runtimes/{org}/{name}/{version} | Resolve runtime (specific version)


# **listRuntimes**
> ListRuntimes200Response listRuntimes(org, language)

List runtimes

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

final api_instance = RuntimesApi();
final org = org_example; // String | 
final language = language_example; // String | 

try {
    final result = api_instance.listRuntimes(org, language);
    print(result);
} catch (e) {
    print('Exception when calling RuntimesApi->listRuntimes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | [optional] 
 **language** | **String**|  | [optional] 

### Return type

[**ListRuntimes200Response**](ListRuntimes200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerRuntime**
> RegisterOperator200Response registerRuntime(runtimeMetadata)

Register a runtime

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

final api_instance = RuntimesApi();
final runtimeMetadata = RuntimeMetadata(); // RuntimeMetadata | 

try {
    final result = api_instance.registerRuntime(runtimeMetadata);
    print(result);
} catch (e) {
    print('Exception when calling RuntimesApi->registerRuntime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runtimeMetadata** | [**RuntimeMetadata**](RuntimeMetadata.md)|  | 

### Return type

[**RegisterOperator200Response**](RegisterOperator200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveRuntime**
> ResolveRuntime200Response resolveRuntime(org, name)

Resolve runtime (latest version)

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

final api_instance = RuntimesApi();
final org = org_example; // String | 
final name = name_example; // String | 

try {
    final result = api_instance.resolveRuntime(org, name);
    print(result);
} catch (e) {
    print('Exception when calling RuntimesApi->resolveRuntime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **name** | **String**|  | 

### Return type

[**ResolveRuntime200Response**](ResolveRuntime200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveRuntimeVersion**
> ResolveRuntime200Response resolveRuntimeVersion(org, name, version)

Resolve runtime (specific version)

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

final api_instance = RuntimesApi();
final org = org_example; // String | 
final name = name_example; // String | 
final version = version_example; // String | 

try {
    final result = api_instance.resolveRuntimeVersion(org, name, version);
    print(result);
} catch (e) {
    print('Exception when calling RuntimesApi->resolveRuntimeVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **name** | **String**|  | 
 **version** | **String**|  | 

### Return type

[**ResolveRuntime200Response**](ResolveRuntime200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

