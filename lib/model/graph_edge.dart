//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GraphEdge {
  /// Returns a new [GraphEdge] instance.
  GraphEdge({
    required this.fromNode,
    required this.fromPort,
    required this.toNode,
    required this.toPort,
  });

  String fromNode;

  String fromPort;

  String toNode;

  String toPort;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphEdge &&
    other.fromNode == fromNode &&
    other.fromPort == fromPort &&
    other.toNode == toNode &&
    other.toPort == toPort;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromNode.hashCode) +
    (fromPort.hashCode) +
    (toNode.hashCode) +
    (toPort.hashCode);

  @override
  String toString() => 'GraphEdge[fromNode=$fromNode, fromPort=$fromPort, toNode=$toNode, toPort=$toPort]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'from_node'] = this.fromNode;
      json[r'from_port'] = this.fromPort;
      json[r'to_node'] = this.toNode;
      json[r'to_port'] = this.toPort;
    return json;
  }

  /// Returns a new [GraphEdge] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphEdge? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphEdge[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphEdge[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphEdge(
        fromNode: mapValueOfType<String>(json, r'from_node')!,
        fromPort: mapValueOfType<String>(json, r'from_port')!,
        toNode: mapValueOfType<String>(json, r'to_node')!,
        toPort: mapValueOfType<String>(json, r'to_port')!,
      );
    }
    return null;
  }

  static List<GraphEdge> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphEdge>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphEdge.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphEdge> mapFromJson(dynamic json) {
    final map = <String, GraphEdge>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphEdge.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphEdge-objects as value to a dart map
  static Map<String, List<GraphEdge>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphEdge>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphEdge.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'from_node',
    'from_port',
    'to_node',
    'to_port',
  };
}

