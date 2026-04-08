//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost:8080', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AddCollaboratorRequest':
          return AddCollaboratorRequest.fromJson(value);
        case 'AddMemberRequest':
          return AddMemberRequest.fromJson(value);
        case 'AddOrgMember200Response':
          return AddOrgMember200Response.fromJson(value);
        case 'AddProjectCollaborator200Response':
          return AddProjectCollaborator200Response.fromJson(value);
        case 'AddTeamMember200Response':
          return AddTeamMember200Response.fromJson(value);
        case 'ApiErr':
          return ApiErr.fromJson(value);
        case 'ApiOk':
          return ApiOk.fromJson(value);
        case 'CancelTask200Response':
          return CancelTask200Response.fromJson(value);
        case 'CancelTask200ResponseAllOfData':
          return CancelTask200ResponseAllOfData.fromJson(value);
        case 'CreateDocument200Response':
          return CreateDocument200Response.fromJson(value);
        case 'CreateDocumentRequest':
          return CreateDocumentRequest.fromJson(value);
        case 'CreateFolder200Response':
          return CreateFolder200Response.fromJson(value);
        case 'CreateFolderRequest':
          return CreateFolderRequest.fromJson(value);
        case 'CreateGraph200Response':
          return CreateGraph200Response.fromJson(value);
        case 'CreateOrgRequest':
          return CreateOrgRequest.fromJson(value);
        case 'CreateOrganization200Response':
          return CreateOrganization200Response.fromJson(value);
        case 'CreateProject200Response':
          return CreateProject200Response.fromJson(value);
        case 'CreateProjectRequest':
          return CreateProjectRequest.fromJson(value);
        case 'CreateTeam200Response':
          return CreateTeam200Response.fromJson(value);
        case 'CreateTeamRequest':
          return CreateTeamRequest.fromJson(value);
        case 'CreateUser200Response':
          return CreateUser200Response.fromJson(value);
        case 'CreateUser200ResponseAllOfData':
          return CreateUser200ResponseAllOfData.fromJson(value);
        case 'CreateUserRequest':
          return CreateUserRequest.fromJson(value);
        case 'DeleteGraph200Response':
          return DeleteGraph200Response.fromJson(value);
        case 'DeleteGraph200ResponseAllOfData':
          return DeleteGraph200ResponseAllOfData.fromJson(value);
        case 'DeleteOrganization200Response':
          return DeleteOrganization200Response.fromJson(value);
        case 'DeleteOrganization200ResponseAllOfData':
          return DeleteOrganization200ResponseAllOfData.fromJson(value);
        case 'DeleteUser200Response':
          return DeleteUser200Response.fromJson(value);
        case 'DeleteUser200ResponseAllOfData':
          return DeleteUser200ResponseAllOfData.fromJson(value);
        case 'Document':
          return Document.fromJson(value);
        case 'Folder':
          return Folder.fromJson(value);
        case 'GetGraph200Response':
          return GetGraph200Response.fromJson(value);
        case 'GetGraphHistory200Response':
          return GetGraphHistory200Response.fromJson(value);
        case 'GetHealth200Response':
          return GetHealth200Response.fromJson(value);
        case 'GetPeer200Response':
          return GetPeer200Response.fromJson(value);
        case 'GetTask200Response':
          return GetTask200Response.fromJson(value);
        case 'Graph':
          return Graph.fromJson(value);
        case 'GraphCreated':
          return GraphCreated.fromJson(value);
        case 'GraphEdge':
          return GraphEdge.fromJson(value);
        case 'GraphNode':
          return GraphNode.fromJson(value);
        case 'GraphSubmitted':
          return GraphSubmitted.fromJson(value);
        case 'GraphSubmittedTasksPostedInner':
          return GraphSubmittedTasksPostedInner.fromJson(value);
        case 'GraphWithRevision':
          return GraphWithRevision.fromJson(value);
        case 'HealthData':
          return HealthData.fromJson(value);
        case 'Identity':
          return Identity.fromJson(value);
        case 'JsonPatchOp':
          return JsonPatchOp.fromJson(value);
        case 'JwkSet':
          return JwkSet.fromJson(value);
        case 'JwkSetKeysInner':
          return JwkSetKeysInner.fromJson(value);
        case 'ListDocuments200Response':
          return ListDocuments200Response.fromJson(value);
        case 'ListFolders200Response':
          return ListFolders200Response.fromJson(value);
        case 'ListOperators200Response':
          return ListOperators200Response.fromJson(value);
        case 'ListOperators200ResponseAllOfData':
          return ListOperators200ResponseAllOfData.fromJson(value);
        case 'ListOrgMembers200Response':
          return ListOrgMembers200Response.fromJson(value);
        case 'ListOrganizations200Response':
          return ListOrganizations200Response.fromJson(value);
        case 'ListPeers200Response':
          return ListPeers200Response.fromJson(value);
        case 'ListPeers200ResponseAllOfData':
          return ListPeers200ResponseAllOfData.fromJson(value);
        case 'ListProjectCollaborators200Response':
          return ListProjectCollaborators200Response.fromJson(value);
        case 'ListProjects200Response':
          return ListProjects200Response.fromJson(value);
        case 'ListRuntimes200Response':
          return ListRuntimes200Response.fromJson(value);
        case 'ListRuntimes200ResponseAllOfData':
          return ListRuntimes200ResponseAllOfData.fromJson(value);
        case 'ListTasks200Response':
          return ListTasks200Response.fromJson(value);
        case 'ListTasks200ResponseAllOfData':
          return ListTasks200ResponseAllOfData.fromJson(value);
        case 'ListTeamMembers200Response':
          return ListTeamMembers200Response.fromJson(value);
        case 'ListTeams200Response':
          return ListTeams200Response.fromJson(value);
        case 'ListUsers200Response':
          return ListUsers200Response.fromJson(value);
        case 'ListUsers200ResponseAllOfData':
          return ListUsers200ResponseAllOfData.fromJson(value);
        case 'NodeKind':
          return NodeKind.fromJson(value);
        case 'OpenIdConfiguration':
          return OpenIdConfiguration.fromJson(value);
        case 'OperatorMetadata':
          return OperatorMetadata.fromJson(value);
        case 'OrgMember':
          return OrgMember.fromJson(value);
        case 'OrgRole':
          return OrgRoleTypeTransformer().decode(value);
        case 'Organization':
          return Organization.fromJson(value);
        case 'PatchGraph200Response':
          return PatchGraph200Response.fromJson(value);
        case 'PatchGraph200ResponseAllOfData':
          return PatchGraph200ResponseAllOfData.fromJson(value);
        case 'PatchHistoryEntry':
          return PatchHistoryEntry.fromJson(value);
        case 'PatchRequest':
          return PatchRequest.fromJson(value);
        case 'Peer':
          return Peer.fromJson(value);
        case 'Port':
          return Port.fromJson(value);
        case 'PostTask200Response':
          return PostTask200Response.fromJson(value);
        case 'PostTask200ResponseAllOfData':
          return PostTask200ResponseAllOfData.fromJson(value);
        case 'PostTaskRequest':
          return PostTaskRequest.fromJson(value);
        case 'Project':
          return Project.fromJson(value);
        case 'ProjectCollaborator':
          return ProjectCollaborator.fromJson(value);
        case 'ProjectPermission':
          return ProjectPermissionTypeTransformer().decode(value);
        case 'RegisterOperator200Response':
          return RegisterOperator200Response.fromJson(value);
        case 'RegisterOperator200ResponseAllOfData':
          return RegisterOperator200ResponseAllOfData.fromJson(value);
        case 'RegisterPeer200Response':
          return RegisterPeer200Response.fromJson(value);
        case 'RegisterPeer200ResponseAllOfData':
          return RegisterPeer200ResponseAllOfData.fromJson(value);
        case 'RegisterPeerRequest':
          return RegisterPeerRequest.fromJson(value);
        case 'RemoveOrgMember200Response':
          return RemoveOrgMember200Response.fromJson(value);
        case 'RemoveOrgMember200ResponseAllOfData':
          return RemoveOrgMember200ResponseAllOfData.fromJson(value);
        case 'RemoveTeamProjectAccess200Response':
          return RemoveTeamProjectAccess200Response.fromJson(value);
        case 'RemoveTeamProjectAccess200ResponseAllOfData':
          return RemoveTeamProjectAccess200ResponseAllOfData.fromJson(value);
        case 'ResolveOperator200Response':
          return ResolveOperator200Response.fromJson(value);
        case 'ResolveRuntime200Response':
          return ResolveRuntime200Response.fromJson(value);
        case 'RuntimeMetadata':
          return RuntimeMetadata.fromJson(value);
        case 'SetTeamProjectAccess200Response':
          return SetTeamProjectAccess200Response.fromJson(value);
        case 'SetTeamProjectAccessRequest':
          return SetTeamProjectAccessRequest.fromJson(value);
        case 'SubmitGraph200Response':
          return SubmitGraph200Response.fromJson(value);
        case 'TaskInfo':
          return TaskInfo.fromJson(value);
        case 'TaskState':
          return TaskStateTypeTransformer().decode(value);
        case 'Team':
          return Team.fromJson(value);
        case 'TeamMember':
          return TeamMember.fromJson(value);
        case 'TeamProjectAccess':
          return TeamProjectAccess.fromJson(value);
        case 'TeamRole':
          return TeamRoleTypeTransformer().decode(value);
        case 'TokenRequest':
          return TokenRequest.fromJson(value);
        case 'TokenResponse':
          return TokenResponse.fromJson(value);
        case 'UpdateDocumentRequest':
          return UpdateDocumentRequest.fromJson(value);
        case 'UploadBlob200Response':
          return UploadBlob200Response.fromJson(value);
        case 'UploadBlob200ResponseAllOfData':
          return UploadBlob200ResponseAllOfData.fromJson(value);
        case 'UserInfo':
          return UserInfo.fromJson(value);
        case 'Visibility':
          return VisibilityTypeTransformer().decode(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
