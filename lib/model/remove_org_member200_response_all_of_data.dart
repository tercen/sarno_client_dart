//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RemoveOrgMember200ResponseAllOfData {
  /// Returns a new [RemoveOrgMember200ResponseAllOfData] instance.
  RemoveOrgMember200ResponseAllOfData({
    required this.removed,
  });

  String removed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RemoveOrgMember200ResponseAllOfData &&
    other.removed == removed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (removed.hashCode);

  @override
  String toString() => 'RemoveOrgMember200ResponseAllOfData[removed=$removed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'removed'] = this.removed;
    return json;
  }

  /// Returns a new [RemoveOrgMember200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RemoveOrgMember200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RemoveOrgMember200ResponseAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RemoveOrgMember200ResponseAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RemoveOrgMember200ResponseAllOfData(
        removed: mapValueOfType<String>(json, r'removed')!,
      );
    }
    return null;
  }

  static List<RemoveOrgMember200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RemoveOrgMember200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RemoveOrgMember200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RemoveOrgMember200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, RemoveOrgMember200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RemoveOrgMember200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RemoveOrgMember200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<RemoveOrgMember200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RemoveOrgMember200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RemoveOrgMember200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'removed',
  };
}

