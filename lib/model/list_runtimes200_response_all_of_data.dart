//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListRuntimes200ResponseAllOfData {
  /// Returns a new [ListRuntimes200ResponseAllOfData] instance.
  ListRuntimes200ResponseAllOfData({
    this.runtimes = const [],
    required this.total,
  });

  List<RuntimeMetadata> runtimes;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListRuntimes200ResponseAllOfData &&
    _deepEquality.equals(other.runtimes, runtimes) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (runtimes.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'ListRuntimes200ResponseAllOfData[runtimes=$runtimes, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'runtimes'] = this.runtimes;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [ListRuntimes200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListRuntimes200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'runtimes'), 'Required key "ListRuntimes200ResponseAllOfData[runtimes]" is missing from JSON.');
        assert(json[r'runtimes'] != null, 'Required key "ListRuntimes200ResponseAllOfData[runtimes]" has a null value in JSON.');
        assert(json.containsKey(r'total'), 'Required key "ListRuntimes200ResponseAllOfData[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "ListRuntimes200ResponseAllOfData[total]" has a null value in JSON.');
        return true;
      }());

      return ListRuntimes200ResponseAllOfData(
        runtimes: RuntimeMetadata.listFromJson(json[r'runtimes']),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<ListRuntimes200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListRuntimes200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListRuntimes200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListRuntimes200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, ListRuntimes200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListRuntimes200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListRuntimes200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<ListRuntimes200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListRuntimes200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListRuntimes200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'runtimes',
    'total',
  };
}

