//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TeamProjectAccessRow {
  /// Returns a new [TeamProjectAccessRow] instance.
  TeamProjectAccessRow({
    required this.projectId,
    required this.projectOwner,
    required this.projectSlug,
    required this.projectDisplayName,
    required this.permission,
  });

  String projectId;

  /// Owner string, e.g. 'user:alice' or 'org:<uuid>'.
  String projectOwner;

  String projectSlug;

  String projectDisplayName;

  ProjectPermission permission;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamProjectAccessRow &&
    other.projectId == projectId &&
    other.projectOwner == projectOwner &&
    other.projectSlug == projectSlug &&
    other.projectDisplayName == projectDisplayName &&
    other.permission == permission;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectId.hashCode) +
    (projectOwner.hashCode) +
    (projectSlug.hashCode) +
    (projectDisplayName.hashCode) +
    (permission.hashCode);

  @override
  String toString() => 'TeamProjectAccessRow[projectId=$projectId, projectOwner=$projectOwner, projectSlug=$projectSlug, projectDisplayName=$projectDisplayName, permission=$permission]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'project_id'] = this.projectId;
      json[r'project_owner'] = this.projectOwner;
      json[r'project_slug'] = this.projectSlug;
      json[r'project_display_name'] = this.projectDisplayName;
      json[r'permission'] = this.permission;
    return json;
  }

  /// Returns a new [TeamProjectAccessRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamProjectAccessRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamProjectAccessRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamProjectAccessRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamProjectAccessRow(
        projectId: mapValueOfType<String>(json, r'project_id')!,
        projectOwner: mapValueOfType<String>(json, r'project_owner')!,
        projectSlug: mapValueOfType<String>(json, r'project_slug')!,
        projectDisplayName: mapValueOfType<String>(json, r'project_display_name')!,
        permission: ProjectPermission.fromJson(json[r'permission'])!,
      );
    }
    return null;
  }

  static List<TeamProjectAccessRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamProjectAccessRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamProjectAccessRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamProjectAccessRow> mapFromJson(dynamic json) {
    final map = <String, TeamProjectAccessRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamProjectAccessRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamProjectAccessRow-objects as value to a dart map
  static Map<String, List<TeamProjectAccessRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamProjectAccessRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamProjectAccessRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project_id',
    'project_owner',
    'project_slug',
    'project_display_name',
    'permission',
  };
}

