//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectCollaborator {
  /// Returns a new [ProjectCollaborator] instance.
  ProjectCollaborator({
    required this.projectId,
    required this.username,
    required this.permission,
  });

  String projectId;

  String username;

  ProjectPermission permission;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectCollaborator &&
    other.projectId == projectId &&
    other.username == username &&
    other.permission == permission;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectId.hashCode) +
    (username.hashCode) +
    (permission.hashCode);

  @override
  String toString() => 'ProjectCollaborator[projectId=$projectId, username=$username, permission=$permission]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'project_id'] = this.projectId;
      json[r'username'] = this.username;
      json[r'permission'] = this.permission;
    return json;
  }

  /// Returns a new [ProjectCollaborator] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectCollaborator? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'project_id'), 'Required key "ProjectCollaborator[project_id]" is missing from JSON.');
        assert(json[r'project_id'] != null, 'Required key "ProjectCollaborator[project_id]" has a null value in JSON.');
        assert(json.containsKey(r'username'), 'Required key "ProjectCollaborator[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "ProjectCollaborator[username]" has a null value in JSON.');
        assert(json.containsKey(r'permission'), 'Required key "ProjectCollaborator[permission]" is missing from JSON.');
        assert(json[r'permission'] != null, 'Required key "ProjectCollaborator[permission]" has a null value in JSON.');
        return true;
      }());

      return ProjectCollaborator(
        projectId: mapValueOfType<String>(json, r'project_id')!,
        username: mapValueOfType<String>(json, r'username')!,
        permission: ProjectPermission.fromJson(json[r'permission'])!,
      );
    }
    return null;
  }

  static List<ProjectCollaborator> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCollaborator>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCollaborator.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectCollaborator> mapFromJson(dynamic json) {
    final map = <String, ProjectCollaborator>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectCollaborator.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectCollaborator-objects as value to a dart map
  static Map<String, List<ProjectCollaborator>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectCollaborator>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectCollaborator.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project_id',
    'username',
    'permission',
  };
}

