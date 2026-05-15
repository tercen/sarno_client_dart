//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MergeConflictPayload {
  /// Returns a new [MergeConflictPayload] instance.
  MergeConflictPayload({
    this.source_,
    this.target,
    this.conflicts = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  List<MergeConflict> conflicts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MergeConflictPayload &&
    other.source_ == source_ &&
    other.target == target &&
    _deepEquality.equals(other.conflicts, conflicts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (source_ == null ? 0 : source_!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (conflicts.hashCode);

  @override
  String toString() => 'MergeConflictPayload[source_=$source_, target=$target, conflicts=$conflicts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
      json[r'conflicts'] = this.conflicts;
    return json;
  }

  /// Returns a new [MergeConflictPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MergeConflictPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MergeConflictPayload(
        source_: mapValueOfType<String>(json, r'source'),
        target: mapValueOfType<String>(json, r'target'),
        conflicts: MergeConflict.listFromJson(json[r'conflicts']),
      );
    }
    return null;
  }

  static List<MergeConflictPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MergeConflictPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MergeConflictPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MergeConflictPayload> mapFromJson(dynamic json) {
    final map = <String, MergeConflictPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MergeConflictPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MergeConflictPayload-objects as value to a dart map
  static Map<String, List<MergeConflictPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MergeConflictPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MergeConflictPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

