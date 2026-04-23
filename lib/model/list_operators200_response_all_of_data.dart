//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListOperators200ResponseAllOfData {
  /// Returns a new [ListOperators200ResponseAllOfData] instance.
  ListOperators200ResponseAllOfData({
    this.operators = const [],
    required this.total,
  });

  List<OperatorMetadata> operators;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOperators200ResponseAllOfData &&
    _deepEquality.equals(other.operators, operators) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (operators.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'ListOperators200ResponseAllOfData[operators=$operators, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'operators'] = this.operators;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [ListOperators200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOperators200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListOperators200ResponseAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListOperators200ResponseAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListOperators200ResponseAllOfData(
        operators: OperatorMetadata.listFromJson(json[r'operators']),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<ListOperators200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListOperators200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListOperators200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListOperators200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, ListOperators200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOperators200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListOperators200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<ListOperators200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListOperators200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListOperators200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'operators',
    'total',
  };
}

