//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TeamProjectAccess {
  /// Returns a new [TeamProjectAccess] instance.
  TeamProjectAccess({
    required this.teamId,
    required this.projectId,
    required this.permission,
  });

  String teamId;

  String projectId;

  ProjectPermission permission;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamProjectAccess &&
    other.teamId == teamId &&
    other.projectId == projectId &&
    other.permission == permission;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (teamId.hashCode) +
    (projectId.hashCode) +
    (permission.hashCode);

  @override
  String toString() => 'TeamProjectAccess[teamId=$teamId, projectId=$projectId, permission=$permission]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'team_id'] = this.teamId;
      json[r'project_id'] = this.projectId;
      json[r'permission'] = this.permission;
    return json;
  }

  /// Returns a new [TeamProjectAccess] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamProjectAccess? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamProjectAccess[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamProjectAccess[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamProjectAccess(
        teamId: mapValueOfType<String>(json, r'team_id')!,
        projectId: mapValueOfType<String>(json, r'project_id')!,
        permission: ProjectPermission.fromJson(json[r'permission'])!,
      );
    }
    return null;
  }

  static List<TeamProjectAccess> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamProjectAccess>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamProjectAccess.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamProjectAccess> mapFromJson(dynamic json) {
    final map = <String, TeamProjectAccess>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamProjectAccess.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamProjectAccess-objects as value to a dart map
  static Map<String, List<TeamProjectAccess>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamProjectAccess>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamProjectAccess.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'team_id',
    'project_id',
    'permission',
  };
}

