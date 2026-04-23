//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TeamsApi {
  TeamsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a team in an organization
  ///
  /// Requires org owner role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [CreateTeamRequest] createTeamRequest (required):
  Future<Response> createTeamWithHttpInfo(String slug, CreateTeamRequest createTeamRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = createTeamRequest;

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

  /// Create a team in an organization
  ///
  /// Requires org owner role.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [CreateTeamRequest] createTeamRequest (required):
  Future<CreateTeam200Response?> createTeam(String slug, CreateTeamRequest createTeamRequest,) async {
    final response = await createTeamWithHttpInfo(slug, createTeamRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateTeam200Response',) as CreateTeam200Response;
    
    }
    return null;
  }

  /// Delete a team
  ///
  /// Requires org owner role. Cascades to team memberships and project access.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  Future<Response> deleteTeamWithHttpInfo(String slug, String teamSlug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams/{team_slug}'
      .replaceAll('{slug}', slug)
      .replaceAll('{team_slug}', teamSlug);

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

  /// Delete a team
  ///
  /// Requires org owner role. Cascades to team memberships and project access.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  Future<DeleteOrganization200Response?> deleteTeam(String slug, String teamSlug,) async {
    final response = await deleteTeamWithHttpInfo(slug, teamSlug,);
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

  /// Get team by slug
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  Future<Response> getTeamWithHttpInfo(String slug, String teamSlug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams/{team_slug}'
      .replaceAll('{slug}', slug)
      .replaceAll('{team_slug}', teamSlug);

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

  /// Get team by slug
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  Future<CreateTeam200Response?> getTeam(String slug, String teamSlug,) async {
    final response = await getTeamWithHttpInfo(slug, teamSlug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateTeam200Response',) as CreateTeam200Response;
    
    }
    return null;
  }

  /// List teams that have access to this project
  ///
  /// Returns every team granted access to the project, with permission level and owning-org metadata. Companion to the team-view endpoint at /api/orgs/{slug}/teams/{team_slug}/projects.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> listProjectTeamAccessWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/{project_id}/team-access'
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

  /// List teams that have access to this project
  ///
  /// Returns every team granted access to the project, with permission level and owning-org metadata. Companion to the team-view endpoint at /api/orgs/{slug}/teams/{team_slug}/projects.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<ListProjectTeamAccess200Response?> listProjectTeamAccess(String projectId,) async {
    final response = await listProjectTeamAccessWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListProjectTeamAccess200Response',) as ListProjectTeamAccess200Response;
    
    }
    return null;
  }

  /// List projects this team has access to
  ///
  /// Returns every project granted to the team, with permission level. Companion to the project-view endpoint at /api/projects/{project_id}/team-access.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  Future<Response> listTeamProjectAccessWithHttpInfo(String slug, String teamSlug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams/{team_slug}/projects'
      .replaceAll('{slug}', slug)
      .replaceAll('{team_slug}', teamSlug);

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

  /// List projects this team has access to
  ///
  /// Returns every project granted to the team, with permission level. Companion to the project-view endpoint at /api/projects/{project_id}/team-access.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  Future<ListTeamProjectAccess200Response?> listTeamProjectAccess(String slug, String teamSlug,) async {
    final response = await listTeamProjectAccessWithHttpInfo(slug, teamSlug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListTeamProjectAccess200Response',) as ListTeamProjectAccess200Response;
    
    }
    return null;
  }

  /// List teams in an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  Future<Response> listTeamsWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams'
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

  /// List teams in an organization
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  Future<ListTeams200Response?> listTeams(String slug,) async {
    final response = await listTeamsWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListTeams200Response',) as ListTeams200Response;
    
    }
    return null;
  }

  /// Remove team access to a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  ///
  /// * [String] projectId (required):
  Future<Response> removeTeamProjectAccessWithHttpInfo(String slug, String teamSlug, String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams/{team_slug}/projects/{project_id}'
      .replaceAll('{slug}', slug)
      .replaceAll('{team_slug}', teamSlug)
      .replaceAll('{project_id}', projectId);

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

  /// Remove team access to a project
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  ///
  /// * [String] projectId (required):
  Future<RemoveTeamProjectAccess200Response?> removeTeamProjectAccess(String slug, String teamSlug, String projectId,) async {
    final response = await removeTeamProjectAccessWithHttpInfo(slug, teamSlug, projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RemoveTeamProjectAccess200Response',) as RemoveTeamProjectAccess200Response;
    
    }
    return null;
  }

  /// Set team access level on a project
  ///
  /// Requires org owner or project admin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  ///
  /// * [String] projectId (required):
  ///
  /// * [SetTeamProjectAccessRequest] setTeamProjectAccessRequest (required):
  Future<Response> setTeamProjectAccessWithHttpInfo(String slug, String teamSlug, String projectId, SetTeamProjectAccessRequest setTeamProjectAccessRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams/{team_slug}/projects/{project_id}'
      .replaceAll('{slug}', slug)
      .replaceAll('{team_slug}', teamSlug)
      .replaceAll('{project_id}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = setTeamProjectAccessRequest;

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

  /// Set team access level on a project
  ///
  /// Requires org owner or project admin.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  ///
  /// * [String] projectId (required):
  ///
  /// * [SetTeamProjectAccessRequest] setTeamProjectAccessRequest (required):
  Future<SetTeamProjectAccess200Response?> setTeamProjectAccess(String slug, String teamSlug, String projectId, SetTeamProjectAccessRequest setTeamProjectAccessRequest,) async {
    final response = await setTeamProjectAccessWithHttpInfo(slug, teamSlug, projectId, setTeamProjectAccessRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SetTeamProjectAccess200Response',) as SetTeamProjectAccess200Response;
    
    }
    return null;
  }
}
