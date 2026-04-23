//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OperatorsApi {
  OperatorsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete an operator version
  ///
  /// Symmetric with the existing runtime delete. Returns a not-found envelope if the version does not exist.
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
  Future<Response> deleteOperatorVersionWithHttpInfo(String org, String name, String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/operators/{org}/{name}/{version}'
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete an operator version
  ///
  /// Symmetric with the existing runtime delete. Returns a not-found envelope if the version does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  ///
  /// * [String] version (required):
  Future<DeleteOperatorVersion200Response?> deleteOperatorVersion(String org, String name, String version,) async {
    final response = await deleteOperatorVersionWithHttpInfo(org, name, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteOperatorVersion200Response',) as DeleteOperatorVersion200Response;
    
    }
    return null;
  }

  /// List operators
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Filter by organization
  Future<Response> listOperatorsWithHttpInfo({ String? org, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/operators';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_queryParams('', 'org', org));
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

  /// List operators
  ///
  /// Parameters:
  ///
  /// * [String] org:
  ///   Filter by organization
  Future<ListOperators200Response?> listOperators({ String? org, }) async {
    final response = await listOperatorsWithHttpInfo( org: org, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOperators200Response',) as ListOperators200Response;
    
    }
    return null;
  }

  /// Register an operator
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OperatorMetadata] operatorMetadata (required):
  Future<Response> registerOperatorWithHttpInfo(OperatorMetadata operatorMetadata,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/operators';

    // ignore: prefer_final_locals
    Object? postBody = operatorMetadata;

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

  /// Register an operator
  ///
  /// Parameters:
  ///
  /// * [OperatorMetadata] operatorMetadata (required):
  Future<RegisterOperator200Response?> registerOperator(OperatorMetadata operatorMetadata,) async {
    final response = await registerOperatorWithHttpInfo(operatorMetadata,);
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

  /// Resolve operator (latest version)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  Future<Response> resolveOperatorWithHttpInfo(String org, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/operators/{org}/{name}'
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

  /// Resolve operator (latest version)
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  Future<ResolveOperator200Response?> resolveOperator(String org, String name,) async {
    final response = await resolveOperatorWithHttpInfo(org, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResolveOperator200Response',) as ResolveOperator200Response;
    
    }
    return null;
  }

  /// Resolve operator (specific version)
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
  Future<Response> resolveOperatorVersionWithHttpInfo(String org, String name, String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/operators/{org}/{name}/{version}'
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

  /// Resolve operator (specific version)
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  ///
  /// * [String] version (required):
  Future<ResolveOperator200Response?> resolveOperatorVersion(String org, String name, String version,) async {
    final response = await resolveOperatorVersionWithHttpInfo(org, name, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResolveOperator200Response',) as ResolveOperator200Response;
    
    }
    return null;
  }
}
