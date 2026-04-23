//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegisterPeer200ResponseAllOfData {
  /// Returns a new [RegisterPeer200ResponseAllOfData] instance.
  RegisterPeer200ResponseAllOfData({
    required this.registered,
  });

  String registered;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterPeer200ResponseAllOfData &&
    other.registered == registered;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (registered.hashCode);

  @override
  String toString() => 'RegisterPeer200ResponseAllOfData[registered=$registered]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'registered'] = this.registered;
    return json;
  }

  /// Returns a new [RegisterPeer200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterPeer200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegisterPeer200ResponseAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegisterPeer200ResponseAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegisterPeer200ResponseAllOfData(
        registered: mapValueOfType<String>(json, r'registered')!,
      );
    }
    return null;
  }

  static List<RegisterPeer200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterPeer200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterPeer200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterPeer200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, RegisterPeer200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterPeer200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterPeer200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<RegisterPeer200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterPeer200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterPeer200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'registered',
  };
}

