//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RuntimesApi {
  RuntimesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List runtimes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///
  /// * [String] language:
  Future<Response> listRuntimesWithHttpInfo({ String? org, String? language, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/runtimes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List runtimes
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///
  /// * [String] language:
  Future<ListRuntimes200Response?> listRuntimes({ String? org, String? language, }) async {
    final response = await listRuntimesWithHttpInfo( org: org, language: language, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListRuntimes200Response',) as ListRuntimes200Response;
    
    }
    return null;
  }

  /// Register a runtime
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RuntimeMetadata] runtimeMetadata (required):
  Future<Response> registerRuntimeWithHttpInfo(RuntimeMetadata runtimeMetadata,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/runtimes';

    // ignore: prefer_final_locals
    Object? postBody = runtimeMetadata;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Register a runtime
  ///
  /// Parameters:
  ///
  /// * [RuntimeMetadata] runtimeMetadata (required):
  Future<RegisterOperator200Response?> registerRuntime(RuntimeMetadata runtimeMetadata,) async {
    final response = await registerRuntimeWithHttpInfo(runtimeMetadata,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegisterOperator200Response',) as RegisterOperator200Response;
    
    }
    return null;
  }

  /// Resolve runtime (latest version)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  Future<Response> resolveRuntimeWithHttpInfo(String org, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/runtimes/{org}/{name}'
      .replaceAll('{org}', org)
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Resolve runtime (latest version)
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  Future<ResolveRuntime200Response?> resolveRuntime(String org, String name,) async {
    final response = await resolveRuntimeWithHttpInfo(org, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResolveRuntime200Response',) as ResolveRuntime200Response;
    
    }
    return null;
  }

  /// Resolve runtime (specific version)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  ///
  /// * [String] version (required):
  Future<Response> resolveRuntimeVersionWithHttpInfo(String org, String name, String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/runtimes/{org}/{name}/{version}'
      .replaceAll('{org}', org)
      .replaceAll('{name}', name)
      .replaceAll('{version}', version);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Resolve runtime (specific version)
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  ///
  /// * [String] version (required):
  Future<ResolveRuntime200Response?> resolveRuntimeVersion(String org, String name, String version,) async {
    final response = await resolveRuntimeVersionWithHttpInfo(org, name, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResolveRuntime200Response',) as ResolveRuntime200Response;
    
    }
    return null;
  }
}
