//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddCollaboratorRequest {
  /// Returns a new [AddCollaboratorRequest] instance.
  AddCollaboratorRequest({
    required this.username,
    required this.permission,
  });

  String username;

  ProjectPermission permission;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddCollaboratorRequest &&
    other.username == username &&
    other.permission == permission;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (permission.hashCode);

  @override
  String toString() => 'AddCollaboratorRequest[username=$username, permission=$permission]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'permission'] = this.permission;
    return json;
  }

  /// Returns a new [AddCollaboratorRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddCollaboratorRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddCollaboratorRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddCollaboratorRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddCollaboratorRequest(
        username: mapValueOfType<String>(json, r'username')!,
        permission: ProjectPermission.fromJson(json[r'permission'])!,
      );
    }
    return null;
  }

  static List<AddCollaboratorRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddCollaboratorRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddCollaboratorRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddCollaboratorRequest> mapFromJson(dynamic json) {
    final map = <String, AddCollaboratorRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddCollaboratorRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddCollaboratorRequest-objects as value to a dart map
  static Map<String, List<AddCollaboratorRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddCollaboratorRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddCollaboratorRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'permission',
  };
}

