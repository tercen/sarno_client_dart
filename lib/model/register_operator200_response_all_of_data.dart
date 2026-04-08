//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegisterOperator200ResponseAllOfData {
  /// Returns a new [RegisterOperator200ResponseAllOfData] instance.
  RegisterOperator200ResponseAllOfData({
    required this.registered,
    required this.org,
    required this.name,
    required this.version,
  });

  bool registered;

  String org;

  String name;

  String version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterOperator200ResponseAllOfData &&
    other.registered == registered &&
    other.org == org &&
    other.name == name &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (registered.hashCode) +
    (org.hashCode) +
    (name.hashCode) +
    (version.hashCode);

  @override
  String toString() => 'RegisterOperator200ResponseAllOfData[registered=$registered, org=$org, name=$name, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'registered'] = this.registered;
      json[r'org'] = this.org;
      json[r'name'] = this.name;
      json[r'version'] = this.version;
    return json;
  }

  /// Returns a new [RegisterOperator200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterOperator200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'registered'), 'Required key "RegisterOperator200ResponseAllOfData[registered]" is missing from JSON.');
        assert(json[r'registered'] != null, 'Required key "RegisterOperator200ResponseAllOfData[registered]" has a null value in JSON.');
        assert(json.containsKey(r'org'), 'Required key "RegisterOperator200ResponseAllOfData[org]" is missing from JSON.');
        assert(json[r'org'] != null, 'Required key "RegisterOperator200ResponseAllOfData[org]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "RegisterOperator200ResponseAllOfData[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "RegisterOperator200ResponseAllOfData[name]" has a null value in JSON.');
        assert(json.containsKey(r'version'), 'Required key "RegisterOperator200ResponseAllOfData[version]" is missing from JSON.');
        assert(json[r'version'] != null, 'Required key "RegisterOperator200ResponseAllOfData[version]" has a null value in JSON.');
        return true;
      }());

      return RegisterOperator200ResponseAllOfData(
        registered: mapValueOfType<bool>(json, r'registered')!,
        org: mapValueOfType<String>(json, r'org')!,
        name: mapValueOfType<String>(json, r'name')!,
        version: mapValueOfType<String>(json, r'version')!,
      );
    }
    return null;
  }

  static List<RegisterOperator200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterOperator200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterOperator200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterOperator200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, RegisterOperator200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterOperator200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterOperator200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<RegisterOperator200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterOperator200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterOperator200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'registered',
    'org',
    'name',
    'version',
  };
}

