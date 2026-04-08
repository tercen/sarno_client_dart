//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MembersApi {
  MembersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a member to an organization
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
  /// * [AddMemberRequest] addMemberRequest (required):
  Future<Response> addOrgMemberWithHttpInfo(String slug, AddMemberRequest addMemberRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/members'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = addMemberRequest;

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

  /// Add a member to an organization
  ///
  /// Requires org owner role.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [AddMemberRequest] addMemberRequest (required):
  Future<AddOrgMember200Response?> addOrgMember(String slug, AddMemberRequest addMemberRequest,) async {
    final response = await addOrgMemberWithHttpInfo(slug, addMemberRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddOrgMember200Response',) as AddOrgMember200Response;
    
    }
    return null;
  }

  /// Add a member to a team
  ///
  /// Requires team maintainer or org owner role.
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
  /// * [AddMemberRequest] addMemberRequest (required):
  Future<Response> addTeamMemberWithHttpInfo(String slug, String teamSlug, AddMemberRequest addMemberRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams/{team_slug}/members'
      .replaceAll('{slug}', slug)
      .replaceAll('{team_slug}', teamSlug);

    // ignore: prefer_final_locals
    Object? postBody = addMemberRequest;

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

  /// Add a member to a team
  ///
  /// Requires team maintainer or org owner role.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  ///
  /// * [AddMemberRequest] addMemberRequest (required):
  Future<AddTeamMember200Response?> addTeamMember(String slug, String teamSlug, AddMemberRequest addMemberRequest,) async {
    final response = await addTeamMemberWithHttpInfo(slug, teamSlug, addMemberRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddTeamMember200Response',) as AddTeamMember200Response;
    
    }
    return null;
  }

  /// List organization members
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  Future<Response> listOrgMembersWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/members'
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

  /// List organization members
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  Future<ListOrgMembers200Response?> listOrgMembers(String slug,) async {
    final response = await listOrgMembersWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrgMembers200Response',) as ListOrgMembers200Response;
    
    }
    return null;
  }

  /// List team members
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
  Future<Response> listTeamMembersWithHttpInfo(String slug, String teamSlug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams/{team_slug}/members'
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

  /// List team members
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  Future<ListTeamMembers200Response?> listTeamMembers(String slug, String teamSlug,) async {
    final response = await listTeamMembersWithHttpInfo(slug, teamSlug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListTeamMembers200Response',) as ListTeamMembers200Response;
    
    }
    return null;
  }

  /// Remove a member from an organization
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
  /// * [String] username (required):
  Future<Response> removeOrgMemberWithHttpInfo(String slug, String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/members/{username}'
      .replaceAll('{slug}', slug)
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

  /// Remove a member from an organization
  ///
  /// Requires org owner role.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] username (required):
  Future<RemoveOrgMember200Response?> removeOrgMember(String slug, String username,) async {
    final response = await removeOrgMemberWithHttpInfo(slug, username,);
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

  /// Remove a member from a team
  ///
  /// Requires team maintainer or org owner role.
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
  /// * [String] username (required):
  Future<Response> removeTeamMemberWithHttpInfo(String slug, String teamSlug, String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}/teams/{team_slug}/members/{username}'
      .replaceAll('{slug}', slug)
      .replaceAll('{team_slug}', teamSlug)
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

  /// Remove a member from a team
  ///
  /// Requires team maintainer or org owner role.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  ///
  /// * [String] teamSlug (required):
  ///   Team URL-safe slug (unique within org)
  ///
  /// * [String] username (required):
  Future<RemoveOrgMember200Response?> removeTeamMember(String slug, String teamSlug, String username,) async {
    final response = await removeTeamMemberWithHttpInfo(slug, teamSlug, username,);
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
