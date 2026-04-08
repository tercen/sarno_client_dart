//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HealthData {
  /// Returns a new [HealthData] instance.
  HealthData({
    required this.status,
    required this.queueDepth,
  });

  String status;

  int queueDepth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthData &&
    other.status == status &&
    other.queueDepth == queueDepth;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (queueDepth.hashCode);

  @override
  String toString() => 'HealthData[status=$status, queueDepth=$queueDepth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'queue_depth'] = this.queueDepth;
    return json;
  }

  /// Returns a new [HealthData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'status'), 'Required key "HealthData[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "HealthData[status]" has a null value in JSON.');
        assert(json.containsKey(r'queue_depth'), 'Required key "HealthData[queue_depth]" is missing from JSON.');
        assert(json[r'queue_depth'] != null, 'Required key "HealthData[queue_depth]" has a null value in JSON.');
        return true;
      }());

      return HealthData(
        status: mapValueOfType<String>(json, r'status')!,
        queueDepth: mapValueOfType<int>(json, r'queue_depth')!,
      );
    }
    return null;
  }

  static List<HealthData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthData> mapFromJson(dynamic json) {
    final map = <String, HealthData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthData-objects as value to a dart map
  static Map<String, List<HealthData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HealthData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HealthData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'queue_depth',
  };
}

