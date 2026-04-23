//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectTeamAccessRow {
  /// Returns a new [ProjectTeamAccessRow] instance.
  ProjectTeamAccessRow({
    required this.teamId,
    required this.teamSlug,
    required this.teamDisplayName,
    required this.orgSlug,
    required this.orgDisplayName,
    required this.permission,
  });

  String teamId;

  String teamSlug;

  String teamDisplayName;

  String orgSlug;

  String orgDisplayName;

  ProjectPermission permission;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectTeamAccessRow &&
    other.teamId == teamId &&
    other.teamSlug == teamSlug &&
    other.teamDisplayName == teamDisplayName &&
    other.orgSlug == orgSlug &&
    other.orgDisplayName == orgDisplayName &&
    other.permission == permission;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (teamId.hashCode) +
    (teamSlug.hashCode) +
    (teamDisplayName.hashCode) +
    (orgSlug.hashCode) +
    (orgDisplayName.hashCode) +
    (permission.hashCode);

  @override
  String toString() => 'ProjectTeamAccessRow[teamId=$teamId, teamSlug=$teamSlug, teamDisplayName=$teamDisplayName, orgSlug=$orgSlug, orgDisplayName=$orgDisplayName, permission=$permission]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'team_id'] = this.teamId;
      json[r'team_slug'] = this.teamSlug;
      json[r'team_display_name'] = this.teamDisplayName;
      json[r'org_slug'] = this.orgSlug;
      json[r'org_display_name'] = this.orgDisplayName;
      json[r'permission'] = this.permission;
    return json;
  }

  /// Returns a new [ProjectTeamAccessRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectTeamAccessRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectTeamAccessRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectTeamAccessRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectTeamAccessRow(
        teamId: mapValueOfType<String>(json, r'team_id')!,
        teamSlug: mapValueOfType<String>(json, r'team_slug')!,
        teamDisplayName: mapValueOfType<String>(json, r'team_display_name')!,
        orgSlug: mapValueOfType<String>(json, r'org_slug')!,
        orgDisplayName: mapValueOfType<String>(json, r'org_display_name')!,
        permission: ProjectPermission.fromJson(json[r'permission'])!,
      );
    }
    return null;
  }

  static List<ProjectTeamAccessRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectTeamAccessRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectTeamAccessRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectTeamAccessRow> mapFromJson(dynamic json) {
    final map = <String, ProjectTeamAccessRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectTeamAccessRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectTeamAccessRow-objects as value to a dart map
  static Map<String, List<ProjectTeamAccessRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectTeamAccessRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectTeamAccessRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'team_id',
    'team_slug',
    'team_display_name',
    'org_slug',
    'org_display_name',
    'permission',
  };
}

