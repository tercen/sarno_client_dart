//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MergeConflict {
  /// Returns a new [MergeConflict] instance.
  MergeConflict({
    this.kind,
    this.at,
  });

  /// Conflict family — e.g. `GraphIdOverlap`, `DocumentNameClash`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MergeConflict &&
    other.kind == kind &&
    other.at == at;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind == null ? 0 : kind!.hashCode) +
    (at == null ? 0 : at!.hashCode);

  @override
  String toString() => 'MergeConflict[kind=$kind, at=$at]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    return json;
  }

  /// Returns a new [MergeConflict] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MergeConflict? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MergeConflict(
        kind: mapValueOfType<String>(json, r'kind'),
        at: mapValueOfType<String>(json, r'at'),
      );
    }
    return null;
  }

  static List<MergeConflict> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MergeConflict>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MergeConflict.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MergeConflict> mapFromJson(dynamic json) {
    final map = <String, MergeConflict>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MergeConflict.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MergeConflict-objects as value to a dart map
  static Map<String, List<MergeConflict>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MergeConflict>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MergeConflict.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

