//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ArtifactsApi {
  ArtifactsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a comment
  ///
  /// Same access as reading. Plain text, 1-4000 bytes; `ref_key` must be one of the artifact's references. At most 1000 comments per artifact (429 past that).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [AddArtifactCommentRequest] addArtifactCommentRequest (required):
  Future<Response> addArtifactCommentWithHttpInfo(String documentId, AddArtifactCommentRequest addArtifactCommentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}/comments'
      .replaceAll('{document_id}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = addArtifactCommentRequest;

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

  /// Add a comment
  ///
  /// Same access as reading. Plain text, 1-4000 bytes; `ref_key` must be one of the artifact's references. At most 1000 comments per artifact (429 past that).
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [AddArtifactCommentRequest] addArtifactCommentRequest (required):
  Future<ArtifactComment?> addArtifactComment(String documentId, AddArtifactCommentRequest addArtifactCommentRequest,) async {
    final response = await addArtifactCommentWithHttpInfo(documentId, addArtifactCommentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArtifactComment',) as ArtifactComment;
    
    }
    return null;
  }

  /// Dry-run: would a named user actually be able to open this artifact?
  ///
  /// Owner-facing only (requires Admin on the artifact's project) — reports, per source project the artifact references, whether the named user has Read. Sharing the artifact document alone does not share what it references; see doc/artifacts.md.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [ArtifactShareCheckRequest] artifactShareCheckRequest (required):
  Future<Response> checkArtifactShareWithHttpInfo(String documentId, ArtifactShareCheckRequest artifactShareCheckRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}/share_check'
      .replaceAll('{document_id}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = artifactShareCheckRequest;

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

  /// Dry-run: would a named user actually be able to open this artifact?
  ///
  /// Owner-facing only (requires Admin on the artifact's project) — reports, per source project the artifact references, whether the named user has Read. Sharing the artifact document alone does not share what it references; see doc/artifacts.md.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [ArtifactShareCheckRequest] artifactShareCheckRequest (required):
  Future<CheckArtifactShare200Response?> checkArtifactShare(String documentId, ArtifactShareCheckRequest artifactShareCheckRequest,) async {
    final response = await checkArtifactShareWithHttpInfo(documentId, artifactShareCheckRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckArtifactShare200Response',) as CheckArtifactShare200Response;
    
    }
    return null;
  }

  /// Create a new Sarno Artifact
  ///
  /// Sanitizes body_html, validates and snapshots each reference (author must have Read on every cited document), lazily creates the caller's own artifact project if needed, seals and stores the manifest. See doc/artifacts.md.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateArtifactRequest] createArtifactRequest (required):
  Future<Response> createArtifactWithHttpInfo(CreateArtifactRequest createArtifactRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts';

    // ignore: prefer_final_locals
    Object? postBody = createArtifactRequest;

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

  /// Create a new Sarno Artifact
  ///
  /// Sanitizes body_html, validates and snapshots each reference (author must have Read on every cited document), lazily creates the caller's own artifact project if needed, seals and stores the manifest. See doc/artifacts.md.
  ///
  /// Parameters:
  ///
  /// * [CreateArtifactRequest] createArtifactRequest (required):
  Future<CreateArtifact200Response?> createArtifact(CreateArtifactRequest createArtifactRequest,) async {
    final response = await createArtifactWithHttpInfo(createArtifactRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateArtifact200Response',) as CreateArtifact200Response;
    
    }
    return null;
  }

  /// Delete an artifact outright
  ///
  /// Requires Admin on the artifact's own project (same bar as sharing). Deletes the artifact's dedicated project; referenced documents and their own projects are untouched. Irreversible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> deleteArtifactWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}'
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

  /// Delete an artifact outright
  ///
  /// Requires Admin on the artifact's own project (same bar as sharing). Deletes the artifact's dedicated project; referenced documents and their own projects are untouched. Irreversible.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<DeleteGraph200Response?> deleteArtifact(String documentId,) async {
    final response = await deleteArtifactWithHttpInfo(documentId,);
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

  /// Delete a comment
  ///
  /// The comment's author or whoever can administer the artifact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] commentId (required):
  Future<Response> deleteArtifactCommentWithHttpInfo(String documentId, String commentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}/comments/{comment_id}'
      .replaceAll('{document_id}', documentId)
      .replaceAll('{comment_id}', commentId);

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

  /// Delete a comment
  ///
  /// The comment's author or whoever can administer the artifact.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] commentId (required):
  Future<DeleteArtifactComment200Response?> deleteArtifactComment(String documentId, String commentId,) async {
    final response = await deleteArtifactCommentWithHttpInfo(documentId, commentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteArtifactComment200Response',) as DeleteArtifactComment200Response;
    
    }
    return null;
  }

  /// A comment's Delete button (browser-facing)
  ///
  /// Form post with the page's view grant `v`; author or artifact admin only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] commentId (required):
  ///
  /// * [String] v (required):
  Future<Response> deleteArtifactCommentFormWithHttpInfo(String documentId, String commentId, String v,) async {
    // ignore: prefer_const_declarations
    final path = r'/artifacts/{document_id}/comments/{comment_id}/delete'
      .replaceAll('{document_id}', documentId)
      .replaceAll('{comment_id}', commentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (v != null) {
      formParams[r'v'] = parameterToString(v);
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

  /// A comment's Delete button (browser-facing)
  ///
  /// Form post with the page's view grant `v`; author or artifact admin only.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] commentId (required):
  ///
  /// * [String] v (required):
  Future<void> deleteArtifactCommentForm(String documentId, String commentId, String v,) async {
    final response = await deleteArtifactCommentFormWithHttpInfo(documentId, commentId, v,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an artifact's summary, including whether the caller could open it
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> getArtifactWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}'
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

  /// Get an artifact's summary, including whether the caller could open it
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<GetArtifact200Response?> getArtifact(String documentId,) async {
    final response = await getArtifactWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetArtifact200Response',) as GetArtifact200Response;
    
    }
    return null;
  }

  /// Fetch one referenced image (browser-facing, grant-gated)
  ///
  /// The `g` grant proves the shell already ran the gate once for this viewer/key/artifact; the ACL is still independently re-checked against the reference's CURRENT project on every call (TOCTOU). Only an image-mime allowlist is served inline; anything else is refused, except a table reference (`render.as = table`), whose requested `page` the board renders to PNG from rows fetched from the worker holding the Parquet source (only the row groups that page needs are read; the file is never copied to the board).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] key (required):
  ///
  /// * [String] g (required):
  ///   Signed, short-lived per-viewer-per-reference grant minted by GET /artifacts/{document_id}.
  ///
  /// * [int] page:
  ///   Table references only: the 1-based page to render. 404 past the table's last page.
  ///
  /// * [String] print:
  ///   Table references only: pages of the printable version's fixed 32 rows instead of the author's page size.
  Future<Response> getArtifactRefWithHttpInfo(String documentId, String key, String g, { int? page, String? print, }) async {
    // ignore: prefer_const_declarations
    final path = r'/artifacts/{document_id}/refs/{key}'
      .replaceAll('{document_id}', documentId)
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'g', g));
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (print != null) {
      queryParams.addAll(_queryParams('', 'print', print));
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

  /// Fetch one referenced image (browser-facing, grant-gated)
  ///
  /// The `g` grant proves the shell already ran the gate once for this viewer/key/artifact; the ACL is still independently re-checked against the reference's CURRENT project on every call (TOCTOU). Only an image-mime allowlist is served inline; anything else is refused, except a table reference (`render.as = table`), whose requested `page` the board renders to PNG from rows fetched from the worker holding the Parquet source (only the row groups that page needs are read; the file is never copied to the board).
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] key (required):
  ///
  /// * [String] g (required):
  ///   Signed, short-lived per-viewer-per-reference grant minted by GET /artifacts/{document_id}.
  ///
  /// * [int] page:
  ///   Table references only: the 1-based page to render. 404 past the table's last page.
  ///
  /// * [String] print:
  ///   Table references only: pages of the printable version's fixed 32 rows instead of the author's page size.
  Future<MultipartFile?> getArtifactRef(String documentId, String key, String g, { int? page, String? print, }) async {
    final response = await getArtifactRefWithHttpInfo(documentId, key, g,  page: page, print: print, );
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

  /// List an artifact's comments, oldest first
  ///
  /// Anyone who can open the artifact (Read on its project plus the all-or-nothing reference gate) can read its comments. 404 otherwise, 403 if the artifact is readable but something it cites is not.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<Response> listArtifactCommentsWithHttpInfo(String documentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}/comments'
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

  /// List an artifact's comments, oldest first
  ///
  /// Anyone who can open the artifact (Read on its project plus the all-or-nothing reference gate) can read its comments. 404 otherwise, 403 if the artifact is readable but something it cites is not.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  Future<ArtifactCommentList?> listArtifactComments(String documentId,) async {
    final response = await listArtifactCommentsWithHttpInfo(documentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArtifactCommentList',) as ArtifactCommentList;
    
    }
    return null;
  }

  /// List the caller's own artifacts
  ///
  /// Every artifact document in the caller's own lazily-created artifact project.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listArtifactsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts';

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

  /// List the caller's own artifacts
  ///
  /// Every artifact document in the caller's own lazily-created artifact project.
  Future<ListArtifacts200Response?> listArtifacts() async {
    final response = await listArtifactsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListArtifacts200Response',) as ListArtifacts200Response;
    
    }
    return null;
  }

  /// The artifact page's comment form (browser-facing)
  ///
  /// `application/x-www-form-urlencoded`: `v` (the page's view grant — the browser's only credential; no cookies), `body`, optional `ref`, plus the page's own `branch`/`p.<key>` parameters, which the 303 redirect back to the page keeps.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] v (required):
  ///
  /// * [String] body (required):
  ///
  /// * [String] ref:
  Future<Response> postArtifactCommentFormWithHttpInfo(String documentId, String v, String body, { String? ref, }) async {
    // ignore: prefer_const_declarations
    final path = r'/artifacts/{document_id}/comments'
      .replaceAll('{document_id}', documentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (v != null) {
      formParams[r'v'] = parameterToString(v);
    }
    if (body != null) {
      formParams[r'body'] = parameterToString(body);
    }
    if (ref != null) {
      formParams[r'ref'] = parameterToString(ref);
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

  /// The artifact page's comment form (browser-facing)
  ///
  /// `application/x-www-form-urlencoded`: `v` (the page's view grant — the browser's only credential; no cookies), `body`, optional `ref`, plus the page's own `branch`/`p.<key>` parameters, which the 303 redirect back to the page keeps.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] v (required):
  ///
  /// * [String] body (required):
  ///
  /// * [String] ref:
  Future<void> postArtifactCommentForm(String documentId, String v, String body, { String? ref, }) async {
    final response = await postArtifactCommentFormWithHttpInfo(documentId, v, body,  ref: ref, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Resolve or reopen a comment
  ///
  /// The comment's author or whoever can administer the artifact. `resolved` defaults to true; false reopens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] commentId (required):
  ///
  /// * [ResolveArtifactCommentRequest] resolveArtifactCommentRequest:
  Future<Response> resolveArtifactCommentWithHttpInfo(String documentId, String commentId, { ResolveArtifactCommentRequest? resolveArtifactCommentRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}/comments/{comment_id}/resolve'
      .replaceAll('{document_id}', documentId)
      .replaceAll('{comment_id}', commentId);

    // ignore: prefer_final_locals
    Object? postBody = resolveArtifactCommentRequest;

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

  /// Resolve or reopen a comment
  ///
  /// The comment's author or whoever can administer the artifact. `resolved` defaults to true; false reopens.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] commentId (required):
  ///
  /// * [ResolveArtifactCommentRequest] resolveArtifactCommentRequest:
  Future<ArtifactComment?> resolveArtifactComment(String documentId, String commentId, { ResolveArtifactCommentRequest? resolveArtifactCommentRequest, }) async {
    final response = await resolveArtifactCommentWithHttpInfo(documentId, commentId,  resolveArtifactCommentRequest: resolveArtifactCommentRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArtifactComment',) as ArtifactComment;
    
    }
    return null;
  }

  /// Add a collaborator on the artifact's own project, then report whether they could actually open it
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [ArtifactShareRequest] artifactShareRequest (required):
  Future<Response> shareArtifactWithHttpInfo(String documentId, ArtifactShareRequest artifactShareRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}/share'
      .replaceAll('{document_id}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = artifactShareRequest;

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

  /// Add a collaborator on the artifact's own project, then report whether they could actually open it
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [ArtifactShareRequest] artifactShareRequest (required):
  Future<ShareArtifact200Response?> shareArtifact(String documentId, ArtifactShareRequest artifactShareRequest,) async {
    final response = await shareArtifactWithHttpInfo(documentId, artifactShareRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShareArtifact200Response',) as ShareArtifact200Response;
    
    }
    return null;
  }

  /// Regenerate an artifact in place
  ///
  /// A doc_update on the SAME document id, not a new document — the share URL survives regeneration, and the prior version is preserved in the document's history. Requires Write on the artifact's project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [CreateArtifactRequest] createArtifactRequest (required):
  Future<Response> updateArtifactWithHttpInfo(String documentId, CreateArtifactRequest createArtifactRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/artifacts/{document_id}'
      .replaceAll('{document_id}', documentId);

    // ignore: prefer_final_locals
    Object? postBody = createArtifactRequest;

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

  /// Regenerate an artifact in place
  ///
  /// A doc_update on the SAME document id, not a new document — the share URL survives regeneration, and the prior version is preserved in the document's history. Requires Write on the artifact's project.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [CreateArtifactRequest] createArtifactRequest (required):
  Future<CreateArtifact200Response?> updateArtifact(String documentId, CreateArtifactRequest createArtifactRequest,) async {
    final response = await updateArtifactWithHttpInfo(documentId, createArtifactRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateArtifact200Response',) as CreateArtifact200Response;
    
    }
    return null;
  }

  /// Render an artifact page (browser-facing)
  ///
  /// No script ever runs on this page. Every image reference is rewritten server-side into a short-lived, per-viewer signed grant URL. Every denial — the artifact doesn't exist, the caller can't read it, or the caller can read it but not everything it cites — returns the SAME generic response; see doc/artifacts.md's all-or-nothing gate section. Accepts `?token=<bearer>` for a plain browser navigation with no Authorization header (mirrors the app-serving `?token=` promotion). Table references render as a scrollable page image plus pager links; `?p.<key>=<n>` selects each table's 1-based page (clamped to the table's range), one parameter per table.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] token:
  ///   Bearer token, for a plain navigation with no Authorization header.
  ///
  /// * [String] v:
  ///   View grant carried by the page's own table pager links in place of the viewer's token: one artifact, one viewer, about an hour. Identifies the viewer only; every access check still runs. Ignored when an Authorization header is present.
  ///
  /// * [String] print:
  ///   The printable version: each table as stacked 32-row images up to its first 1,000 rows, comments without forms. Save it as PDF with the browser's Print.
  ///
  /// * [String] branch:
  Future<Response> viewArtifactWithHttpInfo(String documentId, { String? token, String? v, String? print, String? branch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/artifacts/{document_id}'
      .replaceAll('{document_id}', documentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (token != null) {
      queryParams.addAll(_queryParams('', 'token', token));
    }
    if (v != null) {
      queryParams.addAll(_queryParams('', 'v', v));
    }
    if (print != null) {
      queryParams.addAll(_queryParams('', 'print', print));
    }
    if (branch != null) {
      queryParams.addAll(_queryParams('', 'branch', branch));
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

  /// Render an artifact page (browser-facing)
  ///
  /// No script ever runs on this page. Every image reference is rewritten server-side into a short-lived, per-viewer signed grant URL. Every denial — the artifact doesn't exist, the caller can't read it, or the caller can read it but not everything it cites — returns the SAME generic response; see doc/artifacts.md's all-or-nothing gate section. Accepts `?token=<bearer>` for a plain browser navigation with no Authorization header (mirrors the app-serving `?token=` promotion). Table references render as a scrollable page image plus pager links; `?p.<key>=<n>` selects each table's 1-based page (clamped to the table's range), one parameter per table.
  ///
  /// Parameters:
  ///
  /// * [String] documentId (required):
  ///
  /// * [String] token:
  ///   Bearer token, for a plain navigation with no Authorization header.
  ///
  /// * [String] v:
  ///   View grant carried by the page's own table pager links in place of the viewer's token: one artifact, one viewer, about an hour. Identifies the viewer only; every access check still runs. Ignored when an Authorization header is present.
  ///
  /// * [String] print:
  ///   The printable version: each table as stacked 32-row images up to its first 1,000 rows, comments without forms. Save it as PDF with the browser's Print.
  ///
  /// * [String] branch:
  Future<String?> viewArtifact(String documentId, { String? token, String? v, String? print, String? branch, }) async {
    final response = await viewArtifactWithHttpInfo(documentId,  token: token, v: v, print: print, branch: branch, );
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
}
