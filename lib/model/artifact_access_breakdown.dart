//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactAccessBreakdown {
  /// Returns a new [ArtifactAccessBreakdown] instance.
  ArtifactAccessBreakdown({
    required this.projectId,
    required this.readable,
  });

  String projectId;

  bool readable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactAccessBreakdown &&
    other.projectId == projectId &&
    other.readable == readable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectId.hashCode) +
    (readable.hashCode);

  @override
  String toString() => 'ArtifactAccessBreakdown[projectId=$projectId, readable=$readable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'project_id'] = this.projectId;
      json[r'readable'] = this.readable;
    return json;
  }

  /// Returns a new [ArtifactAccessBreakdown] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactAccessBreakdown? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'project_id'), 'Required key "ArtifactAccessBreakdown[project_id]" is missing from JSON.');
        assert(json[r'project_id'] != null, 'Required key "ArtifactAccessBreakdown[project_id]" has a null value in JSON.');
        assert(json.containsKey(r'readable'), 'Required key "ArtifactAccessBreakdown[readable]" is missing from JSON.');
        assert(json[r'readable'] != null, 'Required key "ArtifactAccessBreakdown[readable]" has a null value in JSON.');
        return true;
      }());

      return ArtifactAccessBreakdown(
        projectId: mapValueOfType<String>(json, r'project_id')!,
        readable: mapValueOfType<bool>(json, r'readable')!,
      );
    }
    return null;
  }

  static List<ArtifactAccessBreakdown> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactAccessBreakdown>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactAccessBreakdown.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactAccessBreakdown> mapFromJson(dynamic json) {
    final map = <String, ArtifactAccessBreakdown>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactAccessBreakdown.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactAccessBreakdown-objects as value to a dart map
  static Map<String, List<ArtifactAccessBreakdown>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactAccessBreakdown>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactAccessBreakdown.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project_id',
    'readable',
  };
}

