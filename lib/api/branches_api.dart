//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BranchesApi {
  BranchesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Merge a source branch into a target branch within a project
  ///
  /// Three-way merge with conflict detection. Returns 200 on a clean merge (with `merge_event_id`, `events_replayed`, `base_event_id`), 409 with a `conflicts` array on structural conflict. Caller must have the role required by the target branch's `ref_protection` rule (default: `write` on `main`). The orchestrator's `/apply` flow points here to promote an agent's working branch (`agent-<discussion_id>`) into `main`. See `docs/agent_branch_merge.md`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [MergeRequest] mergeRequest (required):
  Future<Response> mergeBranchesWithHttpInfo(String projectId, MergeRequest mergeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/merges'
      .replaceAll('{project_id}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = mergeRequest;

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

  /// Merge a source branch into a target branch within a project
  ///
  /// Three-way merge with conflict detection. Returns 200 on a clean merge (with `merge_event_id`, `events_replayed`, `base_event_id`), 409 with a `conflicts` array on structural conflict. Caller must have the role required by the target branch's `ref_protection` rule (default: `write` on `main`). The orchestrator's `/apply` flow points here to promote an agent's working branch (`agent-<discussion_id>`) into `main`. See `docs/agent_branch_merge.md`.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [MergeRequest] mergeRequest (required):
  Future<MergeBranches200Response?> mergeBranches(String projectId, MergeRequest mergeRequest,) async {
    final response = await mergeBranchesWithHttpInfo(projectId, mergeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MergeBranches200Response',) as MergeBranches200Response;
    
    }
    return null;
  }
}
