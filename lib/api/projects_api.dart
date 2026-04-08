//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProjectsApi {
  ProjectsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a project
  ///
  /// Owner is 'org:<uuid>' or 'user:<username>'. For org-owned projects, requires org member role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateProjectRequest] createProjectRequest (required):
  Future<Response> createProjectWithHttpInfo(CreateProjectRequest createProjectRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects';

    // ignore: prefer_final_locals
    Object? postBody = createProjectRequest;

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

  /// Create a project
  ///
  /// Owner is 'org:<uuid>' or 'user:<username>'. For org-owned projects, requires org member role.
  ///
  /// Parameters:
  ///
  /// * [CreateProjectRequest] createProjectRequest (required):
  Future<CreateProject200Response?> createProject(CreateProjectRequest createProjectRequest,) async {
    final response = await createProjectWithHttpInfo(createProjectRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateProject200Response',) as CreateProject200Response;
    
    }
    return null;
  }

  /// Delete a project
  ///
  /// Requires Admin permission on the project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] slug (required):
  Future<Response> deleteProjectWithHttpInfo(String owner, String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{owner}/{slug}'
      .replaceAll('{owner}', owner)
      .replaceAll('{slug}', slug);

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

  /// Delete a project
  ///
  /// Requires Admin permission on the project.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] slug (required):
  Future<DeleteOrganization200Response?> deleteProject(String owner, String slug,) async {
    final response = await deleteProjectWithHttpInfo(owner, slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteOrganization200Response',) as DeleteOrganization200Response;
    
    }
    return null;
  }

  /// Get project by owner and slug
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owner string (e.g. 'user:alice' or 'org:abc123')
  ///
  /// * [String] slug (required):
  Future<Response> getProjectWithHttpInfo(String owner, String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{owner}/{slug}'
      .replaceAll('{owner}', owner)
      .replaceAll('{slug}', slug);

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

  /// Get project by owner and slug
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///   Owner string (e.g. 'user:alice' or 'org:abc123')
  ///
  /// * [String] slug (required):
  Future<CreateProject200Response?> getProject(String owner, String slug,) async {
    final response = await getProjectWithHttpInfo(owner, slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateProject200Response',) as CreateProject200Response;
    
    }
    return null;
  }

  /// List projects visible to the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///   Filter by owner (e.g. 'org:<uuid>' or 'user:<username>')
  Future<Response> listProjectsWithHttpInfo({ String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
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

  /// List projects visible to the authenticated user
  ///
  /// Parameters:
  ///
  /// * [String] owner:
  ///   Filter by owner (e.g. 'org:<uuid>' or 'user:<username>')
  Future<ListProjects200Response?> listProjects({ String? owner, }) async {
    final response = await listProjectsWithHttpInfo( owner: owner, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListProjects200Response',) as ListProjects200Response;
    
    }
    return null;
  }
}
