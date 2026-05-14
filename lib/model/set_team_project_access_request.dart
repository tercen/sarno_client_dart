//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetTeamProjectAccessRequest {
  /// Returns a new [SetTeamProjectAccessRequest] instance.
  SetTeamProjectAccessRequest({
    required this.permission,
  });

  ProjectPermission permission;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetTeamProjectAccessRequest &&
    other.permission == permission;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (permission.hashCode);

  @override
  String toString() => 'SetTeamProjectAccessRequest[permission=$permission]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'permission'] = this.permission;
    return json;
  }

  /// Returns a new [SetTeamProjectAccessRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetTeamProjectAccessRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'permission'), 'Required key "SetTeamProjectAccessRequest[permission]" is missing from JSON.');
        assert(json[r'permission'] != null, 'Required key "SetTeamProjectAccessRequest[permission]" has a null value in JSON.');
        return true;
      }());

      return SetTeamProjectAccessRequest(
        permission: ProjectPermission.fromJson(json[r'permission'])!,
      );
    }
    return null;
  }

  static List<SetTeamProjectAccessRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetTeamProjectAccessRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetTeamProjectAccessRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetTeamProjectAccessRequest> mapFromJson(dynamic json) {
    final map = <String, SetTeamProjectAccessRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetTeamProjectAccessRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetTeamProjectAccessRequest-objects as value to a dart map
  static Map<String, List<SetTeamProjectAccessRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetTeamProjectAccessRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetTeamProjectAccessRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'permission',
  };
}

