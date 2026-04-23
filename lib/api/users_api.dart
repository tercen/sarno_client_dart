//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a user
  ///
  /// Requires ManageUsers capability (admin role).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateUserRequest] createUserRequest (required):
  Future<Response> createUserWithHttpInfo(CreateUserRequest createUserRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/users';

    // ignore: prefer_final_locals
    Object? postBody = createUserRequest;

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

  /// Create a user
  ///
  /// Requires ManageUsers capability (admin role).
  ///
  /// Parameters:
  ///
  /// * [CreateUserRequest] createUserRequest (required):
  Future<CreateUser200Response?> createUser(CreateUserRequest createUserRequest,) async {
    final response = await createUserWithHttpInfo(createUserRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateUser200Response',) as CreateUser200Response;
    
    }
    return null;
  }

  /// Delete a user
  ///
  /// Requires ManageUsers capability (admin role).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  Future<Response> deleteUserWithHttpInfo(String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/users/{username}'
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

  /// Delete a user
  ///
  /// Requires ManageUsers capability (admin role).
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  Future<DeleteUser200Response?> deleteUser(String username,) async {
    final response = await deleteUserWithHttpInfo(username,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteUser200Response',) as DeleteUser200Response;
    
    }
    return null;
  }

  /// Get a single user by username
  ///
  /// Returns one UserInfo. Returns an object with an `error` field (but still HTTP 200, `success: true`) when the username is not found, matching the board's existing error-envelope convention.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  Future<Response> getUserWithHttpInfo(String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/users/{username}'
      .replaceAll('{username}', username);

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

  /// Get a single user by username
  ///
  /// Returns one UserInfo. Returns an object with an `error` field (but still HTTP 200, `success: true`) when the username is not found, matching the board's existing error-envelope convention.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  Future<GetUser200Response?> getUser(String username,) async {
    final response = await getUserWithHttpInfo(username,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetUser200Response',) as GetUser200Response;
    
    }
    return null;
  }

  /// List users
  ///
  /// Requires ManageUsers capability (admin role).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/users';

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

  /// List users
  ///
  /// Requires ManageUsers capability (admin role).
  Future<ListUsers200Response?> listUsers() async {
    final response = await listUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListUsers200Response',) as ListUsers200Response;
    
    }
    return null;
  }
}
