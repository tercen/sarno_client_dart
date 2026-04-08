//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DocumentsApi {
  DocumentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a document in a project
  ///
  /// Requires Write permission on the project. Links a blob to the project/folder hierarchy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [CreateDocumentRequest] createDocumentRequest (required):
  Future<Response> createDocumentWithHttpInfo(String projectId, CreateDocumentRequest createDocumentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/documents'
      .replaceAll('{project_id}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = createDocumentRequest;

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

  /// Create a document in a project
  ///
  /// Requires Write permission on the project. Links a blob to the project/folder hierarchy.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [CreateDocumentRequest] createDocumentRequest (required):
  Future<CreateDocument200Response?> createDocument(String projectId, CreateDocumentRequest createDocumentRequest,) async {
    final response = await createDocumentWithHttpInfo(projectId, createDocumentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDocument200Response',) as CreateDocument200Response;
    
    }
    return null;
  }

  /// Delete a document
  ///
  /// Requires Write permission on the project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> deleteDocumentWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/documents/{document_id}'
      .replaceAll('{document_id}', documentId);

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

  /// Delete a document
  ///
  /// Requires Write permission on the project.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<DeleteOrganization200Response?> deleteDocument(String documentId,) async {
    final response = await deleteDocumentWithHttpInfo(documentId,);
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

  /// Get document metadata
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> getDocumentWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/documents/{document_id}'
      .replaceAll('{document_id}', documentId);

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

  /// Get document metadata
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<CreateDocument200Response?> getDocument(String documentId,) async {
    final response = await getDocumentWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDocument200Response',) as CreateDocument200Response;
    
    }
    return null;
  }

  /// List documents in a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [String] folderId:
  ///   Filter by folder (omit for project root)
  Future<Response> listDocumentsWithHttpInfo(String projectId, { String? folderId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/documents'
      .replaceAll('{project_id}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (folderId != null) {
      queryParams.addAll(_queryParams('', 'folder_id', folderId));
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

  /// List documents in a project
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [String] folderId:
  ///   Filter by folder (omit for project root)
  Future<ListDocuments200Response?> listDocuments(String projectId, { String? folderId, }) async {
    final response = await listDocumentsWithHttpInfo(projectId,  folderId: folderId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListDocuments200Response',) as ListDocuments200Response;
    
    }
    return null;
  }

  /// Update a document (new blob version)
  ///
  /// Requires Write permission. Updates the blob_hash, mime_type, and size.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [UpdateDocumentRequest] updateDocumentRequest (required):
  Future<Response> updateDocumentWithHttpInfo(String documentId, UpdateDocumentRequest updateDocumentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/documents/{document_id}'
      .replaceAll('{document_id}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = updateDocumentRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a document (new blob version)
  ///
  /// Requires Write permission. Updates the blob_hash, mime_type, and size.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [UpdateDocumentRequest] updateDocumentRequest (required):
  Future<CreateDocument200Response?> updateDocument(String documentId, UpdateDocumentRequest updateDocumentRequest,) async {
    final response = await updateDocumentWithHttpInfo(documentId, updateDocumentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDocument200Response',) as CreateDocument200Response;
    
    }
    return null;
  }
}
