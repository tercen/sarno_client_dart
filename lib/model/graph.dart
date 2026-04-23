//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Graph {
  /// Returns a new [Graph] instance.
  Graph({
    required this.id,
    required this.name,
    this.nodes = const [],
    this.edges = const [],
    required this.owner,
    this.workflowId,
    this.projectId,
    this.projectUuid,
    this.folderId,
    required this.createdAt,
  });

  String id;

  String name;

  List<GraphNode> nodes;

  List<GraphEdge> edges;

  String owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workflowId;

  /// Legacy text project ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// Layer 1 project FK
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectUuid;

  /// Layer 1 folder FK
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? folderId;

  /// Unix ms
  int createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Graph &&
    other.id == id &&
    other.name == name &&
    _deepEquality.equals(other.nodes, nodes) &&
    _deepEquality.equals(other.edges, edges) &&
    other.owner == owner &&
    other.workflowId == workflowId &&
    other.projectId == projectId &&
    other.projectUuid == projectUuid &&
    other.folderId == folderId &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (nodes.hashCode) +
    (edges.hashCode) +
    (owner.hashCode) +
    (workflowId == null ? 0 : workflowId!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (projectUuid == null ? 0 : projectUuid!.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Graph[id=$id, name=$name, nodes=$nodes, edges=$edges, owner=$owner, workflowId=$workflowId, projectId=$projectId, projectUuid=$projectUuid, folderId=$folderId, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'nodes'] = this.nodes;
      json[r'edges'] = this.edges;
      json[r'owner'] = this.owner;
    if (this.workflowId != null) {
      json[r'workflow_id'] = this.workflowId;
    } else {
      json[r'workflow_id'] = null;
    }
    if (this.projectId != null) {
      json[r'project_id'] = this.projectId;
    } else {
      json[r'project_id'] = null;
    }
    if (this.projectUuid != null) {
      json[r'project_uuid'] = this.projectUuid;
    } else {
      json[r'project_uuid'] = null;
    }
    if (this.folderId != null) {
      json[r'folder_id'] = this.folderId;
    } else {
      json[r'folder_id'] = null;
    }
      json[r'created_at'] = this.createdAt;
    return json;
  }

  /// Returns a new [Graph] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Graph? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Graph[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Graph[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Graph(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        nodes: GraphNode.listFromJson(json[r'nodes']),
        edges: GraphEdge.listFromJson(json[r'edges']),
        owner: mapValueOfType<String>(json, r'owner')!,
        workflowId: mapValueOfType<String>(json, r'workflow_id'),
        projectId: mapValueOfType<String>(json, r'project_id'),
        projectUuid: mapValueOfType<String>(json, r'project_uuid'),
        folderId: mapValueOfType<String>(json, r'folder_id'),
        createdAt: mapValueOfType<int>(json, r'created_at')!,
      );
    }
    return null;
  }

  static List<Graph> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Graph>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Graph.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Graph> mapFromJson(dynamic json) {
    final map = <String, Graph>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Graph.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Graph-objects as value to a dart map
  static Map<String, List<Graph>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Graph>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Graph.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'nodes',
    'edges',
    'owner',
    'created_at',
  };
}

