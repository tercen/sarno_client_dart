//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactShareCheckRequest {
  /// Returns a new [ArtifactShareCheckRequest] instance.
  ArtifactShareCheckRequest({
    required this.username,
  });

  String username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactShareCheckRequest &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode);

  @override
  String toString() => 'ArtifactShareCheckRequest[username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
    return json;
  }

  /// Returns a new [ArtifactShareCheckRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactShareCheckRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'username'), 'Required key "ArtifactShareCheckRequest[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "ArtifactShareCheckRequest[username]" has a null value in JSON.');
        return true;
      }());

      return ArtifactShareCheckRequest(
        username: mapValueOfType<String>(json, r'username')!,
      );
    }
    return null;
  }

  static List<ArtifactShareCheckRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactShareCheckRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactShareCheckRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactShareCheckRequest> mapFromJson(dynamic json) {
    final map = <String, ArtifactShareCheckRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactShareCheckRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactShareCheckRequest-objects as value to a dart map
  static Map<String, List<ArtifactShareCheckRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactShareCheckRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactShareCheckRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
  };
}

