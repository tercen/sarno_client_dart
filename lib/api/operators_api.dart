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

  /// Download operator source (admin-only)
  ///
  /// Streams the operator's source file by resolving the operator's `code_blob` server-side. Admin-only — used by the security-reviewer agent to inspect operator code without exposing raw content-addressed `/blob/<hash>` reads. The response is `text/plain` with a `Content-Disposition: attachment` filename derived from the language (`.py` / `.R` / `.txt`).
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
  Future<Response> downloadOperatorCodeWithHttpInfo(String org, String name, String version,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/operators/{org}/{name}/{version}/code'
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

  /// Download operator source (admin-only)
  ///
  /// Streams the operator's source file by resolving the operator's `code_blob` server-side. Admin-only — used by the security-reviewer agent to inspect operator code without exposing raw content-addressed `/blob/<hash>` reads. The response is `text/plain` with a `Content-Disposition: attachment` filename derived from the language (`.py` / `.R` / `.txt`).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] name (required):
  ///
  /// * [String] version (required):
  Future<String?> downloadOperatorCode(String org, String name, String version,) async {
    final response = await downloadOperatorCodeWithHttpInfo(org, name, version,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
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
  /// Multipart upload: operator code bytes arrive inline in the same call as the metadata (no separate /api/upload step). Text fields mirror OperatorMetadata; JSON-shaped fields (input_spec, output_spec, properties, resource_model_schema, operator_spec) are submitted as JSON-encoded strings. The `code` file part is hashed into the blob store and recorded as `code_blob` on the OperatorPublish event committed to the operator's project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [String] version (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] org:
  ///
  /// * [String] description:
  ///
  /// * [String] runtime:
  ///
  /// * [String] isolationPolicy:
  ///
  /// * [String] gitRepo:
  ///
  /// * [String] gitSha:
  ///
  /// * [String] buildRef:
  ///
  /// * [String] manifestHash:
  ///
  /// * [String] inputSpec:
  ///   JSON-encoded object
  ///
  /// * [String] outputSpec:
  ///   JSON-encoded object
  ///
  /// * [String] properties:
  ///   JSON-encoded object
  ///
  /// * [String] resourceModelSchema:
  ///   JSON-encoded object
  ///
  /// * [String] operatorSpec:
  ///   JSON-encoded object
  ///
  /// * [MultipartFile] code:
  ///   Operator source bytes. Optional for agent operators.
  Future<Response> registerOperatorWithHttpInfo(String name, String version, String language, { String? org, String? description, String? runtime, String? isolationPolicy, String? gitRepo, String? gitSha, String? buildRef, String? manifestHash, String? inputSpec, String? outputSpec, String? properties, String? resourceModelSchema, String? operatorSpec, MultipartFile? code, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/operators';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (org != null) {
      hasFields = true;
      mp.fields[r'org'] = parameterToString(org);
    }
    if (name != null) {
      hasFields = true;
      mp.fields[r'name'] = parameterToString(name);
    }
    if (version != null) {
      hasFields = true;
      mp.fields[r'version'] = parameterToString(version);
    }
    if (language != null) {
      hasFields = true;
      mp.fields[r'language'] = parameterToString(language);
    }
    if (description != null) {
      hasFields = true;
      mp.fields[r'description'] = parameterToString(description);
    }
    if (runtime != null) {
      hasFields = true;
      mp.fields[r'runtime'] = parameterToString(runtime);
    }
    if (isolationPolicy != null) {
      hasFields = true;
      mp.fields[r'isolation_policy'] = parameterToString(isolationPolicy);
    }
    if (gitRepo != null) {
      hasFields = true;
      mp.fields[r'git_repo'] = parameterToString(gitRepo);
    }
    if (gitSha != null) {
      hasFields = true;
      mp.fields[r'git_sha'] = parameterToString(gitSha);
    }
    if (buildRef != null) {
      hasFields = true;
      mp.fields[r'build_ref'] = parameterToString(buildRef);
    }
    if (manifestHash != null) {
      hasFields = true;
      mp.fields[r'manifest_hash'] = parameterToString(manifestHash);
    }
    if (inputSpec != null) {
      hasFields = true;
      mp.fields[r'input_spec'] = parameterToString(inputSpec);
    }
    if (outputSpec != null) {
      hasFields = true;
      mp.fields[r'output_spec'] = parameterToString(outputSpec);
    }
    if (properties != null) {
      hasFields = true;
      mp.fields[r'properties'] = parameterToString(properties);
    }
    if (resourceModelSchema != null) {
      hasFields = true;
      mp.fields[r'resource_model_schema'] = parameterToString(resourceModelSchema);
    }
    if (operatorSpec != null) {
      hasFields = true;
      mp.fields[r'operator_spec'] = parameterToString(operatorSpec);
    }
    if (code != null) {
      hasFields = true;
      mp.fields[r'code'] = code.field;
      mp.files.add(code);
    }
    if (hasFields) {
      postBody = mp;
    }

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
  /// Multipart upload: operator code bytes arrive inline in the same call as the metadata (no separate /api/upload step). Text fields mirror OperatorMetadata; JSON-shaped fields (input_spec, output_spec, properties, resource_model_schema, operator_spec) are submitted as JSON-encoded strings. The `code` file part is hashed into the blob store and recorded as `code_blob` on the OperatorPublish event committed to the operator's project.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///
  /// * [String] version (required):
  ///
  /// * [String] language (required):
  ///
  /// * [String] org:
  ///
  /// * [String] description:
  ///
  /// * [String] runtime:
  ///
  /// * [String] isolationPolicy:
  ///
  /// * [String] gitRepo:
  ///
  /// * [String] gitSha:
  ///
  /// * [String] buildRef:
  ///
  /// * [String] manifestHash:
  ///
  /// * [String] inputSpec:
  ///   JSON-encoded object
  ///
  /// * [String] outputSpec:
  ///   JSON-encoded object
  ///
  /// * [String] properties:
  ///   JSON-encoded object
  ///
  /// * [String] resourceModelSchema:
  ///   JSON-encoded object
  ///
  /// * [String] operatorSpec:
  ///   JSON-encoded object
  ///
  /// * [MultipartFile] code:
  ///   Operator source bytes. Optional for agent operators.
  Future<RegisterOperator200Response?> registerOperator(String name, String version, String language, { String? org, String? description, String? runtime, String? isolationPolicy, String? gitRepo, String? gitSha, String? buildRef, String? manifestHash, String? inputSpec, String? outputSpec, String? properties, String? resourceModelSchema, String? operatorSpec, MultipartFile? code, }) async {
    final response = await registerOperatorWithHttpInfo(name, version, language,  org: org, description: description, runtime: runtime, isolationPolicy: isolationPolicy, gitRepo: gitRepo, gitSha: gitSha, buildRef: buildRef, manifestHash: manifestHash, inputSpec: inputSpec, outputSpec: outputSpec, properties: properties, resourceModelSchema: resourceModelSchema, operatorSpec: operatorSpec, code: code, );
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
