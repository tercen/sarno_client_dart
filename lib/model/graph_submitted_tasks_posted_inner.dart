//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GraphSubmittedTasksPostedInner {
  /// Returns a new [GraphSubmittedTasksPostedInner] instance.
  GraphSubmittedTasksPostedInner({
    required this.node,
    required this.taskId,
  });

  String node;

  int taskId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphSubmittedTasksPostedInner &&
    other.node == node &&
    other.taskId == taskId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (node.hashCode) +
    (taskId.hashCode);

  @override
  String toString() => 'GraphSubmittedTasksPostedInner[node=$node, taskId=$taskId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'node'] = this.node;
      json[r'task_id'] = this.taskId;
    return json;
  }

  /// Returns a new [GraphSubmittedTasksPostedInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphSubmittedTasksPostedInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'node'), 'Required key "GraphSubmittedTasksPostedInner[node]" is missing from JSON.');
        assert(json[r'node'] != null, 'Required key "GraphSubmittedTasksPostedInner[node]" has a null value in JSON.');
        assert(json.containsKey(r'task_id'), 'Required key "GraphSubmittedTasksPostedInner[task_id]" is missing from JSON.');
        assert(json[r'task_id'] != null, 'Required key "GraphSubmittedTasksPostedInner[task_id]" has a null value in JSON.');
        return true;
      }());

      return GraphSubmittedTasksPostedInner(
        node: mapValueOfType<String>(json, r'node')!,
        taskId: mapValueOfType<int>(json, r'task_id')!,
      );
    }
    return null;
  }

  static List<GraphSubmittedTasksPostedInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphSubmittedTasksPostedInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphSubmittedTasksPostedInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphSubmittedTasksPostedInner> mapFromJson(dynamic json) {
    final map = <String, GraphSubmittedTasksPostedInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphSubmittedTasksPostedInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphSubmittedTasksPostedInner-objects as value to a dart map
  static Map<String, List<GraphSubmittedTasksPostedInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphSubmittedTasksPostedInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphSubmittedTasksPostedInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'node',
    'task_id',
  };
}

