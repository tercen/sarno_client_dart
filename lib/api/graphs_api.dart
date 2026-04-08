//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GraphsApi {
  GraphsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new computation graph
  ///
  /// Requires Write permission on the target project (project_id in graph body).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Graph] graph (required):
  Future<Response> createGraphWithHttpInfo(Graph graph,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/graph';

    // ignore: prefer_final_locals
    Object? postBody = graph;

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

  /// Create a new computation graph
  ///
  /// Requires Write permission on the target project (project_id in graph body).
  ///
  /// Parameters:
  ///
  /// * [Graph] graph (required):
  Future<CreateGraph200Response?> createGraph(Graph graph,) async {
    final response = await createGraphWithHttpInfo(graph,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateGraph200Response',) as CreateGraph200Response;
    
    }
    return null;
  }

  /// Delete a graph
  ///
  /// Requires Admin permission on the graph's project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteGraphWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/graph/{id}'
      .replaceAll('{id}', id);

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

  /// Delete a graph
  ///
  /// Requires Admin permission on the graph's project.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<DeleteGraph200Response?> deleteGraph(String id,) async {
    final response = await deleteGraphWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteGraph200Response',) as DeleteGraph200Response;
    
    }
    return null;
  }

  /// Get current graph state
  ///
  /// Requires Read permission on the graph's project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getGraphWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/graph/{id}'
      .replaceAll('{id}', id);

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

  /// Get current graph state
  ///
  /// Requires Read permission on the graph's project.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<GetGraph200Response?> getGraph(String id,) async {
    final response = await getGraphWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetGraph200Response',) as GetGraph200Response;
    
    }
    return null;
  }

  /// Get graph state at a specific revision (time travel)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] rev (required):
  Future<Response> getGraphAtRevisionWithHttpInfo(String id, int rev,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/graph/{id}/at/{rev}'
      .replaceAll('{id}', id)
      .replaceAll('{rev}', rev.toString());

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

  /// Get graph state at a specific revision (time travel)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] rev (required):
  Future<GetGraph200Response?> getGraphAtRevision(String id, int rev,) async {
    final response = await getGraphAtRevisionWithHttpInfo(id, rev,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetGraph200Response',) as GetGraph200Response;
    
    }
    return null;
  }

  /// Get patch history for a graph
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getGraphHistoryWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/graph/{id}/history'
      .replaceAll('{id}', id);

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

  /// Get patch history for a graph
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<GetGraphHistory200Response?> getGraphHistory(String id,) async {
    final response = await getGraphHistoryWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetGraphHistory200Response',) as GetGraphHistory200Response;
    
    }
    return null;
  }

  /// Apply JSON Patch (RFC 6902) to graph
  ///
  /// Requires Write permission on the graph's project. Uses optimistic locking via revision.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PatchRequest] patchRequest (required):
  Future<Response> patchGraphWithHttpInfo(String id, PatchRequest patchRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/graph/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = patchRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Apply JSON Patch (RFC 6902) to graph
  ///
  /// Requires Write permission on the graph's project. Uses optimistic locking via revision.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [PatchRequest] patchRequest (required):
  Future<PatchGraph200Response?> patchGraph(String id, PatchRequest patchRequest,) async {
    final response = await patchGraphWithHttpInfo(id, patchRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatchGraph200Response',) as PatchGraph200Response;
    
    }
    return null;
  }

  /// Submit graph for execution
  ///
  /// Requires Write permission. Board walks DAG topologically, posts each node as a task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> submitGraphWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/graph/{id}/submit'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Submit graph for execution
  ///
  /// Requires Write permission. Board walks DAG topologically, posts each node as a task.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<SubmitGraph200Response?> submitGraph(String id,) async {
    final response = await submitGraphWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SubmitGraph200Response',) as SubmitGraph200Response;
    
    }
    return null;
  }
}
