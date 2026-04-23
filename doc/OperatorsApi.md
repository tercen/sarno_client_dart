# sarno_client.api.OperatorsApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOperatorVersion**](OperatorsApi.md#deleteoperatorversion) | **DELETE** /api/operators/{org}/{name}/{version} | Delete an operator version
[**listOperators**](OperatorsApi.md#listoperators) | **GET** /api/operators | List operators
[**registerOperator**](OperatorsApi.md#registeroperator) | **POST** /api/operators | Register an operator
[**resolveOperator**](OperatorsApi.md#resolveoperator) | **GET** /api/operators/{org}/{name} | Resolve operator (latest version)
[**resolveOperatorVersion**](OperatorsApi.md#resolveoperatorversion) | **GET** /api/operators/{org}/{name}/{version} | Resolve operator (specific version)


# **deleteOperatorVersion**
> DeleteOperatorVersion200Response deleteOperatorVersion(org, name, version)

Delete an operator version

Symmetric with the existing runtime delete. Returns a not-found envelope if the version does not exist.

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

final api_instance = OperatorsApi();
final org = org_example; // String | 
final name = name_example; // String | 
final version = version_example; // String | 

try {
    final result = api_instance.deleteOperatorVersion(org, name, version);
    print(result);
} catch (e) {
    print('Exception when calling OperatorsApi->deleteOperatorVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **name** | **String**|  | 
 **version** | **String**|  | 

### Return type

[**DeleteOperatorVersion200Response**](DeleteOperatorVersion200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOperators**
> ListOperators200Response listOperators(org)

List operators

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

final api_instance = OperatorsApi();
final org = org_example; // String | Filter by organization

try {
    final result = api_instance.listOperators(org);
    print(result);
} catch (e) {
    print('Exception when calling OperatorsApi->listOperators: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**| Filter by organization | [optional] 

### Return type

[**ListOperators200Response**](ListOperators200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerOperator**
> RegisterOperator200Response registerOperator(operatorMetadata)

Register an operator

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

final api_instance = OperatorsApi();
final operatorMetadata = OperatorMetadata(); // OperatorMetadata | 

try {
    final result = api_instance.registerOperator(operatorMetadata);
    print(result);
} catch (e) {
    print('Exception when calling OperatorsApi->registerOperator: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operatorMetadata** | [**OperatorMetadata**](OperatorMetadata.md)|  | 

### Return type

[**RegisterOperator200Response**](RegisterOperator200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveOperator**
> ResolveOperator200Response resolveOperator(org, name)

Resolve operator (latest version)

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

final api_instance = OperatorsApi();
final org = org_example; // String | 
final name = name_example; // String | 

try {
    final result = api_instance.resolveOperator(org, name);
    print(result);
} catch (e) {
    print('Exception when calling OperatorsApi->resolveOperator: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **name** | **String**|  | 

### Return type

[**ResolveOperator200Response**](ResolveOperator200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveOperatorVersion**
> ResolveOperator200Response resolveOperatorVersion(org, name, version)

Resolve operator (specific version)

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

final api_instance = OperatorsApi();
final org = org_example; // String | 
final name = name_example; // String | 
final version = version_example; // String | 

try {
    final result = api_instance.resolveOperatorVersion(org, name, version);
    print(result);
} catch (e) {
    print('Exception when calling OperatorsApi->resolveOperatorVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **name** | **String**|  | 
 **version** | **String**|  | 

### Return type

[**ResolveOperator200Response**](ResolveOperator200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

