//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FoldersApi {
  FoldersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a folder in a project
  ///
  /// Requires Write permission on the project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [CreateFolderRequest] createFolderRequest (required):
  Future<Response> createFolderWithHttpInfo(String projectId, CreateFolderRequest createFolderRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/folders'
      .replaceAll('{project_id}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = createFolderRequest;

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

  /// Create a folder in a project
  ///
  /// Requires Write permission on the project.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [CreateFolderRequest] createFolderRequest (required):
  Future<CreateFolder200Response?> createFolder(String projectId, CreateFolderRequest createFolderRequest,) async {
    final response = await createFolderWithHttpInfo(projectId, createFolderRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateFolder200Response',) as CreateFolder200Response;
    
    }
    return null;
  }

  /// Delete a folder
  ///
  /// Requires Write permission on the project. Cascades to subfolders.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] folderId (required):
  Future<Response> deleteFolderWithHttpInfo(String folderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/folders/{folder_id}'
      .replaceAll('{folder_id}', folderId);

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

  /// Delete a folder
  ///
  /// Requires Write permission on the project. Cascades to subfolders.
  ///
  /// Parameters:
  ///
  /// * [String] folderId (required):
  Future<DeleteOrganization200Response?> deleteFolder(String folderId,) async {
    final response = await deleteFolderWithHttpInfo(folderId,);
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

  /// List folders in a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [String] parentId:
  ///   Filter by parent folder (omit for root)
  Future<Response> listFoldersWithHttpInfo(String projectId, { String? parentId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/folders'
      .replaceAll('{project_id}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (parentId != null) {
      queryParams.addAll(_queryParams('', 'parent_id', parentId));
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

  /// List folders in a project
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [String] parentId:
  ///   Filter by parent folder (omit for root)
  Future<ListFolders200Response?> listFolders(String projectId, { String? parentId, }) async {
    final response = await listFoldersWithHttpInfo(projectId,  parentId: parentId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListFolders200Response',) as ListFolders200Response;
    
    }
    return null;
  }
}
