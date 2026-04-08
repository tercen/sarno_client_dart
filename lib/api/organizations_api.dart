//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrganizationsApi {
  OrganizationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an organization
  ///
  /// The authenticated user becomes the org owner.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateOrgRequest] createOrgRequest (required):
  Future<Response> createOrganizationWithHttpInfo(CreateOrgRequest createOrgRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs';

    // ignore: prefer_final_locals
    Object? postBody = createOrgRequest;

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

  /// Create an organization
  ///
  /// The authenticated user becomes the org owner.
  ///
  /// Parameters:
  ///
  /// * [CreateOrgRequest] createOrgRequest (required):
  Future<CreateOrganization200Response?> createOrganization(CreateOrgRequest createOrgRequest,) async {
    final response = await createOrganizationWithHttpInfo(createOrgRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateOrganization200Response',) as CreateOrganization200Response;
    
    }
    return null;
  }

  /// Delete an organization
  ///
  /// Requires org owner role. Cascades to teams, memberships, and team-project access.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  Future<Response> deleteOrganizationWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}'
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

  /// Delete an organization
  ///
  /// Requires org owner role. Cascades to teams, memberships, and team-project access.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  Future<DeleteOrganization200Response?> deleteOrganization(String slug,) async {
    final response = await deleteOrganizationWithHttpInfo(slug,);
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

  /// Get organization by slug
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  Future<Response> getOrganizationWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs/{slug}'
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

  /// Get organization by slug
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Organization URL-safe slug
  Future<CreateOrganization200Response?> getOrganization(String slug,) async {
    final response = await getOrganizationWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateOrganization200Response',) as CreateOrganization200Response;
    
    }
    return null;
  }

  /// List organizations the authenticated user belongs to
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listOrganizationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/orgs';

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

  /// List organizations the authenticated user belongs to
  Future<ListOrganizations200Response?> listOrganizations() async {
    final response = await listOrganizationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListOrganizations200Response',) as ListOrganizations200Response;
    
    }
    return null;
  }
}
