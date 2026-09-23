//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactShareResult {
  /// Returns a new [ArtifactShareResult] instance.
  ArtifactShareResult({
    required this.username,
    required this.permission,
    required this.addedAsCollaboratorOnArtifactProject,
    required this.wouldOpen,
    this.missingReadOnProjects = const [],
  });

  String username;

  String permission;

  String addedAsCollaboratorOnArtifactProject;

  bool wouldOpen;

  List<String> missingReadOnProjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactShareResult &&
    other.username == username &&
    other.permission == permission &&
    other.addedAsCollaboratorOnArtifactProject == addedAsCollaboratorOnArtifactProject &&
    other.wouldOpen == wouldOpen &&
    _deepEquality.equals(other.missingReadOnProjects, missingReadOnProjects);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (permission.hashCode) +
    (addedAsCollaboratorOnArtifactProject.hashCode) +
    (wouldOpen.hashCode) +
    (missingReadOnProjects.hashCode);

  @override
  String toString() => 'ArtifactShareResult[username=$username, permission=$permission, addedAsCollaboratorOnArtifactProject=$addedAsCollaboratorOnArtifactProject, wouldOpen=$wouldOpen, missingReadOnProjects=$missingReadOnProjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'permission'] = this.permission;
      json[r'added_as_collaborator_on_artifact_project'] = this.addedAsCollaboratorOnArtifactProject;
      json[r'would_open'] = this.wouldOpen;
      json[r'missing_read_on_projects'] = this.missingReadOnProjects;
    return json;
  }

  /// Returns a new [ArtifactShareResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactShareResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'username'), 'Required key "ArtifactShareResult[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "ArtifactShareResult[username]" has a null value in JSON.');
        assert(json.containsKey(r'permission'), 'Required key "ArtifactShareResult[permission]" is missing from JSON.');
        assert(json[r'permission'] != null, 'Required key "ArtifactShareResult[permission]" has a null value in JSON.');
        assert(json.containsKey(r'added_as_collaborator_on_artifact_project'), 'Required key "ArtifactShareResult[added_as_collaborator_on_artifact_project]" is missing from JSON.');
        assert(json[r'added_as_collaborator_on_artifact_project'] != null, 'Required key "ArtifactShareResult[added_as_collaborator_on_artifact_project]" has a null value in JSON.');
        assert(json.containsKey(r'would_open'), 'Required key "ArtifactShareResult[would_open]" is missing from JSON.');
        assert(json[r'would_open'] != null, 'Required key "ArtifactShareResult[would_open]" has a null value in JSON.');
        return true;
      }());

      return ArtifactShareResult(
        username: mapValueOfType<String>(json, r'username')!,
        permission: mapValueOfType<String>(json, r'permission')!,
        addedAsCollaboratorOnArtifactProject: mapValueOfType<String>(json, r'added_as_collaborator_on_artifact_project')!,
        wouldOpen: mapValueOfType<bool>(json, r'would_open')!,
        missingReadOnProjects: json[r'missing_read_on_projects'] is Iterable
            ? (json[r'missing_read_on_projects'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ArtifactShareResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactShareResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactShareResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactShareResult> mapFromJson(dynamic json) {
    final map = <String, ArtifactShareResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactShareResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactShareResult-objects as value to a dart map
  static Map<String, List<ArtifactShareResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactShareResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactShareResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'permission',
    'added_as_collaborator_on_artifact_project',
    'would_open',
  };
}

