//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactListResult {
  /// Returns a new [ArtifactListResult] instance.
  ArtifactListResult({
    this.artifacts = const [],
    required this.count,
  });

  List<ArtifactListResultArtifactsInner> artifacts;

  int count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactListResult &&
    _deepEquality.equals(other.artifacts, artifacts) &&
    other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (artifacts.hashCode) +
    (count.hashCode);

  @override
  String toString() => 'ArtifactListResult[artifacts=$artifacts, count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'artifacts'] = this.artifacts;
      json[r'count'] = this.count;
    return json;
  }

  /// Returns a new [ArtifactListResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactListResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'artifacts'), 'Required key "ArtifactListResult[artifacts]" is missing from JSON.');
        assert(json[r'artifacts'] != null, 'Required key "ArtifactListResult[artifacts]" has a null value in JSON.');
        assert(json.containsKey(r'count'), 'Required key "ArtifactListResult[count]" is missing from JSON.');
        assert(json[r'count'] != null, 'Required key "ArtifactListResult[count]" has a null value in JSON.');
        return true;
      }());

      return ArtifactListResult(
        artifacts: ArtifactListResultArtifactsInner.listFromJson(json[r'artifacts']),
        count: mapValueOfType<int>(json, r'count')!,
      );
    }
    return null;
  }

  static List<ArtifactListResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactListResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactListResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactListResult> mapFromJson(dynamic json) {
    final map = <String, ArtifactListResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactListResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactListResult-objects as value to a dart map
  static Map<String, List<ArtifactListResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactListResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactListResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'artifacts',
    'count',
  };
}

