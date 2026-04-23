//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListTasks200ResponseAllOfData {
  /// Returns a new [ListTasks200ResponseAllOfData] instance.
  ListTasks200ResponseAllOfData({
    this.tasks = const [],
  });

  List<TaskInfo> tasks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListTasks200ResponseAllOfData &&
    _deepEquality.equals(other.tasks, tasks);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tasks.hashCode);

  @override
  String toString() => 'ListTasks200ResponseAllOfData[tasks=$tasks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tasks'] = this.tasks;
    return json;
  }

  /// Returns a new [ListTasks200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListTasks200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListTasks200ResponseAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListTasks200ResponseAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListTasks200ResponseAllOfData(
        tasks: TaskInfo.listFromJson(json[r'tasks']),
      );
    }
    return null;
  }

  static List<ListTasks200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListTasks200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListTasks200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListTasks200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, ListTasks200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListTasks200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListTasks200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<ListTasks200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListTasks200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListTasks200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tasks',
  };
}

