//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrgMember {
  /// Returns a new [OrgMember] instance.
  OrgMember({
    required this.orgId,
    required this.username,
    required this.role,
  });

  String orgId;

  String username;

  OrgRole role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgMember &&
    other.orgId == orgId &&
    other.username == username &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orgId.hashCode) +
    (username.hashCode) +
    (role.hashCode);

  @override
  String toString() => 'OrgMember[orgId=$orgId, username=$username, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'org_id'] = this.orgId;
      json[r'username'] = this.username;
      json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [OrgMember] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgMember? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'org_id'), 'Required key "OrgMember[org_id]" is missing from JSON.');
        assert(json[r'org_id'] != null, 'Required key "OrgMember[org_id]" has a null value in JSON.');
        assert(json.containsKey(r'username'), 'Required key "OrgMember[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "OrgMember[username]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "OrgMember[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "OrgMember[role]" has a null value in JSON.');
        return true;
      }());

      return OrgMember(
        orgId: mapValueOfType<String>(json, r'org_id')!,
        username: mapValueOfType<String>(json, r'username')!,
        role: OrgRole.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<OrgMember> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrgMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrgMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrgMember> mapFromJson(dynamic json) {
    final map = <String, OrgMember>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrgMember.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrgMember-objects as value to a dart map
  static Map<String, List<OrgMember>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrgMember>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrgMember.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'org_id',
    'username',
    'role',
  };
}

