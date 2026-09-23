//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactCreateResult {
  /// Returns a new [ArtifactCreateResult] instance.
  ArtifactCreateResult({
    required this.id,
    required this.url,
  });

  String id;

  /// Browser-facing path, e.g. /artifacts/{id}
  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactCreateResult &&
    other.id == id &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode);

  @override
  String toString() => 'ArtifactCreateResult[id=$id, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [ArtifactCreateResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactCreateResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ArtifactCreateResult[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ArtifactCreateResult[id]" has a null value in JSON.');
        assert(json.containsKey(r'url'), 'Required key "ArtifactCreateResult[url]" is missing from JSON.');
        assert(json[r'url'] != null, 'Required key "ArtifactCreateResult[url]" has a null value in JSON.');
        return true;
      }());

      return ArtifactCreateResult(
        id: mapValueOfType<String>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<ArtifactCreateResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactCreateResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactCreateResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactCreateResult> mapFromJson(dynamic json) {
    final map = <String, ArtifactCreateResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactCreateResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactCreateResult-objects as value to a dart map
  static Map<String, List<ArtifactCreateResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactCreateResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactCreateResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
  };
}

