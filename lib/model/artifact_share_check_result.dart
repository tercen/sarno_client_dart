//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactShareCheckResult {
  /// Returns a new [ArtifactShareCheckResult] instance.
  ArtifactShareCheckResult({
    required this.username,
    required this.wouldOpen,
    this.projects = const [],
    this.missingReadOnProjects = const [],
  });

  String username;

  /// True only if the named user currently has Read on every project this artifact references.
  bool wouldOpen;

  List<ArtifactAccessBreakdown> projects;

  List<String> missingReadOnProjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactShareCheckResult &&
    other.username == username &&
    other.wouldOpen == wouldOpen &&
    _deepEquality.equals(other.projects, projects) &&
    _deepEquality.equals(other.missingReadOnProjects, missingReadOnProjects);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (wouldOpen.hashCode) +
    (projects.hashCode) +
    (missingReadOnProjects.hashCode);

  @override
  String toString() => 'ArtifactShareCheckResult[username=$username, wouldOpen=$wouldOpen, projects=$projects, missingReadOnProjects=$missingReadOnProjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'would_open'] = this.wouldOpen;
      json[r'projects'] = this.projects;
      json[r'missing_read_on_projects'] = this.missingReadOnProjects;
    return json;
  }

  /// Returns a new [ArtifactShareCheckResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactShareCheckResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'username'), 'Required key "ArtifactShareCheckResult[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "ArtifactShareCheckResult[username]" has a null value in JSON.');
        assert(json.containsKey(r'would_open'), 'Required key "ArtifactShareCheckResult[would_open]" is missing from JSON.');
        assert(json[r'would_open'] != null, 'Required key "ArtifactShareCheckResult[would_open]" has a null value in JSON.');
        assert(json.containsKey(r'missing_read_on_projects'), 'Required key "ArtifactShareCheckResult[missing_read_on_projects]" is missing from JSON.');
        assert(json[r'missing_read_on_projects'] != null, 'Required key "ArtifactShareCheckResult[missing_read_on_projects]" has a null value in JSON.');
        return true;
      }());

      return ArtifactShareCheckResult(
        username: mapValueOfType<String>(json, r'username')!,
        wouldOpen: mapValueOfType<bool>(json, r'would_open')!,
        projects: ArtifactAccessBreakdown.listFromJson(json[r'projects']),
        missingReadOnProjects: json[r'missing_read_on_projects'] is Iterable
            ? (json[r'missing_read_on_projects'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ArtifactShareCheckResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactShareCheckResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactShareCheckResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactShareCheckResult> mapFromJson(dynamic json) {
    final map = <String, ArtifactShareCheckResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactShareCheckResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactShareCheckResult-objects as value to a dart map
  static Map<String, List<ArtifactShareCheckResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactShareCheckResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactShareCheckResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'would_open',
    'missing_read_on_projects',
  };
}

