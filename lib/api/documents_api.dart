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

  /// Download a document's bytes
  ///
  /// Streams the document's blob with `Content-Type` set from the document's `mime_type` and `Content-Disposition: attachment` carrying the document's name. The byte source is resolved via the same internal path the server uses everywhere — local board store first, then P2P fetch from a registered provider. This is the canonical public path for downloading user-visible artifacts. Raw content-addressed access (by blob hash) is reserved for internal/substrate use only and is not part of the OpenAPI surface.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   Document UUID
  Future<Response> downloadDocumentWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/documents/{document_id}/download'
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

  /// Download a document's bytes
  ///
  /// Streams the document's blob with `Content-Type` set from the document's `mime_type` and `Content-Disposition: attachment` carrying the document's name. The byte source is resolved via the same internal path the server uses everywhere — local board store first, then P2P fetch from a registered provider. This is the canonical public path for downloading user-visible artifacts. Raw content-addressed access (by blob hash) is reserved for internal/substrate use only and is not part of the OpenAPI surface.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   Document UUID
  Future<MultipartFile?> downloadDocument(String documentId,) async {
    final response = await downloadDocumentWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
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

  /// Get a document's table schema
  ///
  /// Returns the column schema and total row count for the document's underlying parquet table — without reading row data. Cost is O(footer size), so this scales to multi-million-row tables (the row count comes from parquet's footer metadata, not by scanning rows).  Auth: caller needs Read on the document's project.  When the blob is on a worker (operator outputs), falls back to a row-bounded peek with `max_rows=0`. Local-path calls are cheap regardless of table size; worker fallback carries one P2P round-trip plus a single batch decode.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   Document UUID
  Future<Response> getDocumentSchemaWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/documents/{document_id}/schema'
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

  /// Get a document's table schema
  ///
  /// Returns the column schema and total row count for the document's underlying parquet table — without reading row data. Cost is O(footer size), so this scales to multi-million-row tables (the row count comes from parquet's footer metadata, not by scanning rows).  Auth: caller needs Read on the document's project.  When the blob is on a worker (operator outputs), falls back to a row-bounded peek with `max_rows=0`. Local-path calls are cheap regardless of table size; worker fallback carries one P2P round-trip plus a single batch decode.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   Document UUID
  Future<GetDocumentSchema200Response?> getDocumentSchema(String documentId,) async {
    final response = await getDocumentSchemaWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDocumentSchema200Response',) as GetDocumentSchema200Response;
    
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
  ///
  /// * [bool] recursive:
  ///   Return every document in the project regardless of folder. Overrides `folder_id`.
  ///
  /// * [String] branch:
  ///   Filter to documents visible from this branch's event-DAG history. When omitted, returns the legacy project-wide listing (rows across every branch). Use `agent-<discussion_id>` to scope to an agent session's working branch — the common case for review-before-merge UIs.  When `branch` is set, the response also surfaces saved graphs (workflows committed via `mcr_save`) as document-shaped rows with `mime_type=application/vnd.tercen.graph+json`. Consumers should dispatch by mime_type: for graph rows, call `graph_get(id)` for execution metadata; the per-document endpoints (`/download`, `/peek`, `/schema`) return 404 for graph ids. See `docs/agent_branch_merge.md` and `docs/artifact_model.md`.
  ///
  /// * [String] diffAgainst:
  ///   Filter to artifacts present on `branch` but NOT on this target branch — the \"what does applying this branch add?\" projection. Powers review-before-merge UIs that need to show only the new rows the agent produced. Identity is by document/graph id; rows whose id is on both sides count as unchanged regardless of any blob_hash difference (content-aware diff is a future extension). Requires `branch=` to be set.
  Future<Response> listDocumentsWithHttpInfo(String projectId, { String? folderId, bool? recursive, String? branch, String? diffAgainst, }) async {
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
    if (recursive != null) {
      queryParams.addAll(_queryParams('', 'recursive', recursive));
    }
    if (branch != null) {
      queryParams.addAll(_queryParams('', 'branch', branch));
    }
    if (diffAgainst != null) {
      queryParams.addAll(_queryParams('', 'diff_against', diffAgainst));
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
  ///
  /// * [bool] recursive:
  ///   Return every document in the project regardless of folder. Overrides `folder_id`.
  ///
  /// * [String] branch:
  ///   Filter to documents visible from this branch's event-DAG history. When omitted, returns the legacy project-wide listing (rows across every branch). Use `agent-<discussion_id>` to scope to an agent session's working branch — the common case for review-before-merge UIs.  When `branch` is set, the response also surfaces saved graphs (workflows committed via `mcr_save`) as document-shaped rows with `mime_type=application/vnd.tercen.graph+json`. Consumers should dispatch by mime_type: for graph rows, call `graph_get(id)` for execution metadata; the per-document endpoints (`/download`, `/peek`, `/schema`) return 404 for graph ids. See `docs/agent_branch_merge.md` and `docs/artifact_model.md`.
  ///
  /// * [String] diffAgainst:
  ///   Filter to artifacts present on `branch` but NOT on this target branch — the \"what does applying this branch add?\" projection. Powers review-before-merge UIs that need to show only the new rows the agent produced. Identity is by document/graph id; rows whose id is on both sides count as unchanged regardless of any blob_hash difference (content-aware diff is a future extension). Requires `branch=` to be set.
  Future<ListDocuments200Response?> listDocuments(String projectId, { String? folderId, bool? recursive, String? branch, String? diffAgainst, }) async {
    final response = await listDocumentsWithHttpInfo(projectId,  folderId: folderId, recursive: recursive, branch: branch, diffAgainst: diffAgainst, );
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

  /// Peek into a document's table data
  ///
  /// Returns a JSON projection of the document's underlying TableData (parquet/columnar). Caller passes the document UUID (the public handle); the blob hash behind it is internal. Use this for SQL-`SELECT col1, col2 LIMIT N`-shaped reads against operator outputs or uploaded data documents.  Auth: caller needs Read on the document's project.  The board resolves the blob locally if present; otherwise it P2P-fetches from a registered provider (typically the worker that produced the operator output).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   Document UUID
  ///
  /// * [int] maxRows:
  ///   Row count cap. Default 20, hard cap 1000.
  ///
  /// * [String] columns:
  ///   Comma-separated column names. Absent columns are silently dropped (mirrors SQL projection).
  Future<Response> peekDocumentWithHttpInfo(String documentId, { int? maxRows, String? columns, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/documents/{document_id}/peek'
      .replaceAll('{document_id}', documentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (maxRows != null) {
      queryParams.addAll(_queryParams('', 'max_rows', maxRows));
    }
    if (columns != null) {
      queryParams.addAll(_queryParams('', 'columns', columns));
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

  /// Peek into a document's table data
  ///
  /// Returns a JSON projection of the document's underlying TableData (parquet/columnar). Caller passes the document UUID (the public handle); the blob hash behind it is internal. Use this for SQL-`SELECT col1, col2 LIMIT N`-shaped reads against operator outputs or uploaded data documents.  Auth: caller needs Read on the document's project.  The board resolves the blob locally if present; otherwise it P2P-fetches from a registered provider (typically the worker that produced the operator output).
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///   Document UUID
  ///
  /// * [int] maxRows:
  ///   Row count cap. Default 20, hard cap 1000.
  ///
  /// * [String] columns:
  ///   Comma-separated column names. Absent columns are silently dropped (mirrors SQL projection).
  Future<PeekDocument200Response?> peekDocument(String documentId, { int? maxRows, String? columns, }) async {
    final response = await peekDocumentWithHttpInfo(documentId,  maxRows: maxRows, columns: columns, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PeekDocument200Response',) as PeekDocument200Response;
    
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
