//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/auth_api.dart';
part 'api/blobs_api.dart';
part 'api/collaborators_api.dart';
part 'api/documents_api.dart';
part 'api/folders_api.dart';
part 'api/graphs_api.dart';
part 'api/health_api.dart';
part 'api/members_api.dart';
part 'api/operators_api.dart';
part 'api/organizations_api.dart';
part 'api/peers_api.dart';
part 'api/projects_api.dart';
part 'api/runtimes_api.dart';
part 'api/tasks_api.dart';
part 'api/teams_api.dart';
part 'api/users_api.dart';

part 'model/add_collaborator_request.dart';
part 'model/add_member_request.dart';
part 'model/add_org_member200_response.dart';
part 'model/add_project_collaborator200_response.dart';
part 'model/add_team_member200_response.dart';
part 'model/api_err.dart';
part 'model/api_ok.dart';
part 'model/cancel_task200_response.dart';
part 'model/cancel_task200_response_all_of_data.dart';
part 'model/create_document200_response.dart';
part 'model/create_document_request.dart';
part 'model/create_folder200_response.dart';
part 'model/create_folder_request.dart';
part 'model/create_graph200_response.dart';
part 'model/create_org_request.dart';
part 'model/create_organization200_response.dart';
part 'model/create_project200_response.dart';
part 'model/create_project_request.dart';
part 'model/create_team200_response.dart';
part 'model/create_team_request.dart';
part 'model/create_user200_response.dart';
part 'model/create_user200_response_all_of_data.dart';
part 'model/create_user_request.dart';
part 'model/delete_graph200_response.dart';
part 'model/delete_graph200_response_all_of_data.dart';
part 'model/delete_organization200_response.dart';
part 'model/delete_organization200_response_all_of_data.dart';
part 'model/delete_user200_response.dart';
part 'model/delete_user200_response_all_of_data.dart';
part 'model/document.dart';
part 'model/folder.dart';
part 'model/get_graph200_response.dart';
part 'model/get_graph_history200_response.dart';
part 'model/get_health200_response.dart';
part 'model/get_peer200_response.dart';
part 'model/get_task200_response.dart';
part 'model/graph.dart';
part 'model/graph_created.dart';
part 'model/graph_edge.dart';
part 'model/graph_node.dart';
part 'model/graph_submitted.dart';
part 'model/graph_submitted_tasks_posted_inner.dart';
part 'model/graph_with_revision.dart';
part 'model/health_data.dart';
part 'model/identity.dart';
part 'model/json_patch_op.dart';
part 'model/jwk_set.dart';
part 'model/jwk_set_keys_inner.dart';
part 'model/list_documents200_response.dart';
part 'model/list_folders200_response.dart';
part 'model/list_operators200_response.dart';
part 'model/list_operators200_response_all_of_data.dart';
part 'model/list_org_members200_response.dart';
part 'model/list_organizations200_response.dart';
part 'model/list_peers200_response.dart';
part 'model/list_peers200_response_all_of_data.dart';
part 'model/list_project_collaborators200_response.dart';
part 'model/list_projects200_response.dart';
part 'model/list_runtimes200_response.dart';
part 'model/list_runtimes200_response_all_of_data.dart';
part 'model/list_tasks200_response.dart';
part 'model/list_tasks200_response_all_of_data.dart';
part 'model/list_team_members200_response.dart';
part 'model/list_teams200_response.dart';
part 'model/list_users200_response.dart';
part 'model/list_users200_response_all_of_data.dart';
part 'model/node_kind.dart';
part 'model/open_id_configuration.dart';
part 'model/operator_metadata.dart';
part 'model/org_member.dart';
part 'model/org_role.dart';
part 'model/organization.dart';
part 'model/patch_graph200_response.dart';
part 'model/patch_graph200_response_all_of_data.dart';
part 'model/patch_history_entry.dart';
part 'model/patch_request.dart';
part 'model/peer.dart';
part 'model/port.dart';
part 'model/post_task200_response.dart';
part 'model/post_task200_response_all_of_data.dart';
part 'model/post_task_request.dart';
part 'model/project.dart';
part 'model/project_collaborator.dart';
part 'model/project_permission.dart';
part 'model/register_operator200_response.dart';
part 'model/register_operator200_response_all_of_data.dart';
part 'model/register_peer200_response.dart';
part 'model/register_peer200_response_all_of_data.dart';
part 'model/register_peer_request.dart';
part 'model/remove_org_member200_response.dart';
part 'model/remove_org_member200_response_all_of_data.dart';
part 'model/remove_team_project_access200_response.dart';
part 'model/remove_team_project_access200_response_all_of_data.dart';
part 'model/resolve_operator200_response.dart';
part 'model/resolve_runtime200_response.dart';
part 'model/runtime_metadata.dart';
part 'model/set_team_project_access200_response.dart';
part 'model/set_team_project_access_request.dart';
part 'model/submit_graph200_response.dart';
part 'model/task_info.dart';
part 'model/task_state.dart';
part 'model/team.dart';
part 'model/team_member.dart';
part 'model/team_project_access.dart';
part 'model/team_role.dart';
part 'model/token_request.dart';
part 'model/token_response.dart';
part 'model/update_document_request.dart';
part 'model/upload_blob200_response.dart';
part 'model/upload_blob200_response_all_of_data.dart';
part 'model/user_info.dart';
part 'model/visibility.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
