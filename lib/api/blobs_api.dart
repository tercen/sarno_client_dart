//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BlobsApi {
  BlobsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Upload a file as a blob
  ///
  /// Accepts multipart/form-data with a `file` field. Returns blake3 hash, filename, size, and MIME type. Content-addressed: uploading the same file twice returns the same hash.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  Future<Response> uploadBlobWithHttpInfo(MultipartFile file,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/upload';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
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

  /// Upload a file as a blob
  ///
  /// Accepts multipart/form-data with a `file` field. Returns blake3 hash, filename, size, and MIME type. Content-addressed: uploading the same file twice returns the same hash.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  Future<UploadBlob200Response?> uploadBlob(MultipartFile file,) async {
    final response = await uploadBlobWithHttpInfo(file,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UploadBlob200Response',) as UploadBlob200Response;
    
    }
    return null;
  }
}
