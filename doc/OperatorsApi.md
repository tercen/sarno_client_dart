# sarno_client.api.OperatorsApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadOperatorCode**](OperatorsApi.md#downloadoperatorcode) | **GET** /api/operators/{org}/{name}/{version}/code | Download operator source (admin-only)
[**listOperators**](OperatorsApi.md#listoperators) | **GET** /api/operators | List operators
[**registerOperator**](OperatorsApi.md#registeroperator) | **POST** /api/operators | Register an operator
[**resolveOperator**](OperatorsApi.md#resolveoperator) | **GET** /api/operators/{org}/{name} | Resolve operator (latest version)
[**resolveOperatorVersion**](OperatorsApi.md#resolveoperatorversion) | **GET** /api/operators/{org}/{name}/{version} | Resolve operator (specific version)


# **downloadOperatorCode**
> String downloadOperatorCode(org, name, version)

Download operator source (admin-only)

Streams the operator's source file by resolving the operator's `code_blob` server-side. Admin-only — used by the security-reviewer agent to inspect operator code without exposing raw content-addressed `/blob/<hash>` reads. The response is `text/plain` with a `Content-Disposition: attachment` filename derived from the language (`.py` / `.R` / `.txt`).

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
    final result = api_instance.downloadOperatorCode(org, name, version);
    print(result);
} catch (e) {
    print('Exception when calling OperatorsApi->downloadOperatorCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **name** | **String**|  | 
 **version** | **String**|  | 

### Return type

**String**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

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
> RegisterOperator200Response registerOperator(name, version, language, org, description, runtime, isolationPolicy, gitRepo, gitSha, buildRef, manifestHash, inputSpec, outputSpec, properties, resourceModelSchema, operatorSpec, code)

Register an operator

Multipart upload: operator code bytes arrive inline in the same call as the metadata (no separate /api/upload step). Text fields mirror OperatorMetadata; JSON-shaped fields (input_spec, output_spec, properties, resource_model_schema, operator_spec) are submitted as JSON-encoded strings. The `code` file part is hashed into the blob store and recorded as `code_blob` on the OperatorPublish event committed to the operator's project.

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
final name = name_example; // String | 
final version = version_example; // String | 
final language = language_example; // String | 
final org = org_example; // String | 
final description = description_example; // String | 
final runtime = runtime_example; // String | 
final isolationPolicy = isolationPolicy_example; // String | 
final gitRepo = gitRepo_example; // String | 
final gitSha = gitSha_example; // String | 
final buildRef = buildRef_example; // String | 
final manifestHash = manifestHash_example; // String | 
final inputSpec = inputSpec_example; // String | JSON-encoded object
final outputSpec = outputSpec_example; // String | JSON-encoded object
final properties = properties_example; // String | JSON-encoded object
final resourceModelSchema = resourceModelSchema_example; // String | JSON-encoded object
final operatorSpec = operatorSpec_example; // String | JSON-encoded object
final code = BINARY_DATA_HERE; // MultipartFile | Operator source bytes. Optional for agent operators.

try {
    final result = api_instance.registerOperator(name, version, language, org, description, runtime, isolationPolicy, gitRepo, gitSha, buildRef, manifestHash, inputSpec, outputSpec, properties, resourceModelSchema, operatorSpec, code);
    print(result);
} catch (e) {
    print('Exception when calling OperatorsApi->registerOperator: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **version** | **String**|  | 
 **language** | **String**|  | 
 **org** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **runtime** | **String**|  | [optional] 
 **isolationPolicy** | **String**|  | [optional] 
 **gitRepo** | **String**|  | [optional] 
 **gitSha** | **String**|  | [optional] 
 **buildRef** | **String**|  | [optional] 
 **manifestHash** | **String**|  | [optional] 
 **inputSpec** | **String**| JSON-encoded object | [optional] 
 **outputSpec** | **String**| JSON-encoded object | [optional] 
 **properties** | **String**| JSON-encoded object | [optional] 
 **resourceModelSchema** | **String**| JSON-encoded object | [optional] 
 **operatorSpec** | **String**| JSON-encoded object | [optional] 
 **code** | **MultipartFile**| Operator source bytes. Optional for agent operators. | [optional] 

### Return type

[**RegisterOperator200Response**](RegisterOperator200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
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

