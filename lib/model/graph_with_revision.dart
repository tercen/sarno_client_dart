//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GraphWithRevision {
  /// Returns a new [GraphWithRevision] instance.
  GraphWithRevision({
    required this.graph,
    required this.revision,
  });

  Graph graph;

  int revision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphWithRevision &&
    other.graph == graph &&
    other.revision == revision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (graph.hashCode) +
    (revision.hashCode);

  @override
  String toString() => 'GraphWithRevision[graph=$graph, revision=$revision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'graph'] = this.graph;
      json[r'revision'] = this.revision;
    return json;
  }

  /// Returns a new [GraphWithRevision] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphWithRevision? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'graph'), 'Required key "GraphWithRevision[graph]" is missing from JSON.');
        assert(json[r'graph'] != null, 'Required key "GraphWithRevision[graph]" has a null value in JSON.');
        assert(json.containsKey(r'revision'), 'Required key "GraphWithRevision[revision]" is missing from JSON.');
        assert(json[r'revision'] != null, 'Required key "GraphWithRevision[revision]" has a null value in JSON.');
        return true;
      }());

      return GraphWithRevision(
        graph: Graph.fromJson(json[r'graph'])!,
        revision: mapValueOfType<int>(json, r'revision')!,
      );
    }
    return null;
  }

  static List<GraphWithRevision> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphWithRevision>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphWithRevision.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphWithRevision> mapFromJson(dynamic json) {
    final map = <String, GraphWithRevision>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphWithRevision.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphWithRevision-objects as value to a dart map
  static Map<String, List<GraphWithRevision>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphWithRevision>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphWithRevision.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'graph',
    'revision',
  };
}

