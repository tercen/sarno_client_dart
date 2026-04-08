//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CollaboratorsApi {
  CollaboratorsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a collaborator to a project
  ///
  /// Requires Admin permission on the project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [AddCollaboratorRequest] addCollaboratorRequest (required):
  Future<Response> addProjectCollaboratorWithHttpInfo(String projectId, AddCollaboratorRequest addCollaboratorRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/collaborators'
      .replaceAll('{project_id}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = addCollaboratorRequest;

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

  /// Add a collaborator to a project
  ///
  /// Requires Admin permission on the project.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [AddCollaboratorRequest] addCollaboratorRequest (required):
  Future<AddProjectCollaborator200Response?> addProjectCollaborator(String projectId, AddCollaboratorRequest addCollaboratorRequest,) async {
    final response = await addProjectCollaboratorWithHttpInfo(projectId, addCollaboratorRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddProjectCollaborator200Response',) as AddProjectCollaborator200Response;
    
    }
    return null;
  }

  /// List project collaborators
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> listProjectCollaboratorsWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/collaborators'
      .replaceAll('{project_id}', projectId);

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

  /// List project collaborators
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<ListProjectCollaborators200Response?> listProjectCollaborators(String projectId,) async {
    final response = await listProjectCollaboratorsWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListProjectCollaborators200Response',) as ListProjectCollaborators200Response;
    
    }
    return null;
  }

  /// Remove a collaborator from a project
  ///
  /// Requires Admin permission on the project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [String] username (required):
  Future<Response> removeProjectCollaboratorWithHttpInfo(String projectId, String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/collaborators/{username}'
      .replaceAll('{project_id}', projectId)
      .replaceAll('{username}', username);

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

  /// Remove a collaborator from a project
  ///
  /// Requires Admin permission on the project.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [String] username (required):
  Future<RemoveOrgMember200Response?> removeProjectCollaborator(String projectId, String username,) async {
    final response = await removeProjectCollaboratorWithHttpInfo(projectId, username,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RemoveOrgMember200Response',) as RemoveOrgMember200Response;
    
    }
    return null;
  }
}
