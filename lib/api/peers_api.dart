//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PeersApi {
  PeersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get peer info
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] endpointId (required):
  Future<Response> getPeerWithHttpInfo(String endpointId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/peer/{endpoint_id}'
      .replaceAll('{endpoint_id}', endpointId);

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

  /// Get peer info
  ///
  /// Parameters:
  ///
  /// * [String] endpointId (required):
  Future<GetPeer200Response?> getPeer(String endpointId,) async {
    final response = await getPeerWithHttpInfo(endpointId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetPeer200Response',) as GetPeer200Response;
    
    }
    return null;
  }

  /// List all known peers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPeersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/peers';

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

  /// List all known peers
  Future<ListPeers200Response?> listPeers() async {
    final response = await listPeersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListPeers200Response',) as ListPeers200Response;
    
    }
    return null;
  }

  /// Register a peer for discovery
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegisterPeerRequest] registerPeerRequest (required):
  Future<Response> registerPeerWithHttpInfo(RegisterPeerRequest registerPeerRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/peer/register';

    // ignore: prefer_final_locals
    Object? postBody = registerPeerRequest;

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

  /// Register a peer for discovery
  ///
  /// Parameters:
  ///
  /// * [RegisterPeerRequest] registerPeerRequest (required):
  Future<RegisterPeer200Response?> registerPeer(RegisterPeerRequest registerPeerRequest,) async {
    final response = await registerPeerWithHttpInfo(registerPeerRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RegisterPeer200Response',) as RegisterPeer200Response;
    
    }
    return null;
  }
}
