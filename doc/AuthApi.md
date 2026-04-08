# sarno_client.api.AuthApi

## Load the API package
```dart
import 'package:sarno_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createToken**](AuthApi.md#createtoken) | **POST** /auth/token | Issue access token (password grant)
[**getJwks**](AuthApi.md#getjwks) | **GET** /auth/jwks | JSON Web Key Set for token verification
[**getOpenIdConfiguration**](AuthApi.md#getopenidconfiguration) | **GET** /.well-known/openid-configuration | OpenID Connect discovery document
[**getUserInfo**](AuthApi.md#getuserinfo) | **GET** /auth/userinfo | Get authenticated user identity


# **createToken**
> TokenResponse createToken(tokenRequest)

Issue access token (password grant)

### Example
```dart
import 'package:sarno_client/api.dart';

final api_instance = AuthApi();
final tokenRequest = TokenRequest(); // TokenRequest | 

try {
    final result = api_instance.createToken(tokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->createToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenRequest** | [**TokenRequest**](TokenRequest.md)|  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJwks**
> JwkSet getJwks()

JSON Web Key Set for token verification

### Example
```dart
import 'package:sarno_client/api.dart';

final api_instance = AuthApi();

try {
    final result = api_instance.getJwks();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->getJwks: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JwkSet**](JwkSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenIdConfiguration**
> OpenIdConfiguration getOpenIdConfiguration()

OpenID Connect discovery document

### Example
```dart
import 'package:sarno_client/api.dart';

final api_instance = AuthApi();

try {
    final result = api_instance.getOpenIdConfiguration();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->getOpenIdConfiguration: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OpenIdConfiguration**](OpenIdConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfo**
> Identity getUserInfo()

Get authenticated user identity

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

final api_instance = AuthApi();

try {
    final result = api_instance.getUserInfo();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->getUserInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Identity**](Identity.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

