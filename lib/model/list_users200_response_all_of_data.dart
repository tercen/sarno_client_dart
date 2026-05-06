//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListUsers200ResponseAllOfData {
  /// Returns a new [ListUsers200ResponseAllOfData] instance.
  ListUsers200ResponseAllOfData({
    this.users = const [],
    required this.total,
  });

  List<UserInfo> users;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListUsers200ResponseAllOfData &&
    _deepEquality.equals(other.users, users) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (users.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'ListUsers200ResponseAllOfData[users=$users, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'users'] = this.users;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [ListUsers200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListUsers200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListUsers200ResponseAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListUsers200ResponseAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListUsers200ResponseAllOfData(
        users: UserInfo.listFromJson(json[r'users']),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<ListUsers200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListUsers200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListUsers200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListUsers200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, ListUsers200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListUsers200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListUsers200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<ListUsers200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListUsers200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListUsers200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'users',
    'total',
  };
}

