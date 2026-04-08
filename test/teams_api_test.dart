//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:tercen_client/api.dart';
import 'package:test/test.dart';


/// tests for TeamsApi
void main() {
  // final instance = TeamsApi();

  group('tests for TeamsApi', () {
    // Create a team in an organization
    //
    // Requires org owner role.
    //
    //Future<CreateTeam200Response> createTeam(String slug, CreateTeamRequest createTeamRequest) async
    test('test createTeam', () async {
      // TODO
    });

    // Delete a team
    //
    // Requires org owner role. Cascades to team memberships and project access.
    //
    //Future<DeleteOrganization200Response> deleteTeam(String slug, String teamSlug) async
    test('test deleteTeam', () async {
      // TODO
    });

    // Get team by slug
    //
    //Future<CreateTeam200Response> getTeam(String slug, String teamSlug) async
    test('test getTeam', () async {
      // TODO
    });

    // List teams in an organization
    //
    //Future<ListTeams200Response> listTeams(String slug) async
    test('test listTeams', () async {
      // TODO
    });

    // Remove team access to a project
    //
    //Future<RemoveTeamProjectAccess200Response> removeTeamProjectAccess(String slug, String teamSlug, String projectId) async
    test('test removeTeamProjectAccess', () async {
      // TODO
    });

    // Set team access level on a project
    //
    // Requires org owner or project admin.
    //
    //Future<SetTeamProjectAccess200Response> setTeamProjectAccess(String slug, String teamSlug, String projectId, SetTeamProjectAccessRequest setTeamProjectAccessRequest) async
    test('test setTeamProjectAccess', () async {
      // TODO
    });

  });
}
