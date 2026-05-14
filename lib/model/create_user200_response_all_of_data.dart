//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateUser200ResponseAllOfData {
  /// Returns a new [CreateUser200ResponseAllOfData] instance.
  CreateUser200ResponseAllOfData({
    required this.username,
    required this.created,
  });

  String username;

  bool created;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUser200ResponseAllOfData &&
    other.username == username &&
    other.created == created;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (created.hashCode);

  @override
  String toString() => 'CreateUser200ResponseAllOfData[username=$username, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'created'] = this.created;
    return json;
  }

  /// Returns a new [CreateUser200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUser200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'username'), 'Required key "CreateUser200ResponseAllOfData[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "CreateUser200ResponseAllOfData[username]" has a null value in JSON.');
        assert(json.containsKey(r'created'), 'Required key "CreateUser200ResponseAllOfData[created]" is missing from JSON.');
        assert(json[r'created'] != null, 'Required key "CreateUser200ResponseAllOfData[created]" has a null value in JSON.');
        return true;
      }());

      return CreateUser200ResponseAllOfData(
        username: mapValueOfType<String>(json, r'username')!,
        created: mapValueOfType<bool>(json, r'created')!,
      );
    }
    return null;
  }

  static List<CreateUser200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUser200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUser200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUser200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, CreateUser200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUser200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUser200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<CreateUser200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUser200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUser200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'created',
  };
}

