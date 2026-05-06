//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GraphCreated {
  /// Returns a new [GraphCreated] instance.
  GraphCreated({
    required this.id,
    required this.revision,
  });

  String id;

  int revision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphCreated &&
    other.id == id &&
    other.revision == revision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (revision.hashCode);

  @override
  String toString() => 'GraphCreated[id=$id, revision=$revision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'revision'] = this.revision;
    return json;
  }

  /// Returns a new [GraphCreated] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphCreated? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphCreated[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphCreated[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphCreated(
        id: mapValueOfType<String>(json, r'id')!,
        revision: mapValueOfType<int>(json, r'revision')!,
      );
    }
    return null;
  }

  static List<GraphCreated> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphCreated>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphCreated.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphCreated> mapFromJson(dynamic json) {
    final map = <String, GraphCreated>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphCreated.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphCreated-objects as value to a dart map
  static Map<String, List<GraphCreated>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphCreated>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphCreated.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'revision',
  };
}

