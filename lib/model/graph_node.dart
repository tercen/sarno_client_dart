//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GraphNode {
  /// Returns a new [GraphNode] instance.
  GraphNode({
    required this.id,
    required this.name,
    required this.kind,
    this.inputs = const [],
    this.outputs = const [],
    required this.state,
    this.taskId,
    this.resultManifest,
    this.error,
  });

  String id;

  String name;

  NodeKind kind;

  List<Port> inputs;

  List<Port> outputs;

  TaskState state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taskId;

  /// Blake3 hash (hex)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resultManifest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphNode &&
    other.id == id &&
    other.name == name &&
    other.kind == kind &&
    _deepEquality.equals(other.inputs, inputs) &&
    _deepEquality.equals(other.outputs, outputs) &&
    other.state == state &&
    other.taskId == taskId &&
    other.resultManifest == resultManifest &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (kind.hashCode) +
    (inputs.hashCode) +
    (outputs.hashCode) +
    (state.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (resultManifest == null ? 0 : resultManifest!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'GraphNode[id=$id, name=$name, kind=$kind, inputs=$inputs, outputs=$outputs, state=$state, taskId=$taskId, resultManifest=$resultManifest, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'kind'] = this.kind;
      json[r'inputs'] = this.inputs;
      json[r'outputs'] = this.outputs;
      json[r'state'] = this.state;
    if (this.taskId != null) {
      json[r'task_id'] = this.taskId;
    } else {
      json[r'task_id'] = null;
    }
    if (this.resultManifest != null) {
      json[r'result_manifest'] = this.resultManifest;
    } else {
      json[r'result_manifest'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [GraphNode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphNode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphNode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphNode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphNode(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        kind: NodeKind.fromJson(json[r'kind'])!,
        inputs: Port.listFromJson(json[r'inputs']),
        outputs: Port.listFromJson(json[r'outputs']),
        state: TaskState.fromJson(json[r'state'])!,
        taskId: mapValueOfType<int>(json, r'task_id'),
        resultManifest: mapValueOfType<String>(json, r'result_manifest'),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<GraphNode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphNode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphNode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphNode> mapFromJson(dynamic json) {
    final map = <String, GraphNode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphNode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphNode-objects as value to a dart map
  static Map<String, List<GraphNode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphNode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphNode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'kind',
    'inputs',
    'outputs',
    'state',
  };
}

