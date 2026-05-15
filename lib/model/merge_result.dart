//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MergeResult {
  /// Returns a new [MergeResult] instance.
  MergeResult({
    this.mergeEventId,
    this.eventsReplayed,
    this.baseEventId,
    this.source_,
    this.target,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mergeEventId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? eventsReplayed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baseEventId;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is MergeResult &&
    other.mergeEventId == mergeEventId &&
    other.eventsReplayed == eventsReplayed &&
    other.baseEventId == baseEventId &&
    other.source_ == source_ &&
    other.target == target;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mergeEventId == null ? 0 : mergeEventId!.hashCode) +
    (eventsReplayed == null ? 0 : eventsReplayed!.hashCode) +
    (baseEventId == null ? 0 : baseEventId!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (target == null ? 0 : target!.hashCode);

  @override
  String toString() => 'MergeResult[mergeEventId=$mergeEventId, eventsReplayed=$eventsReplayed, baseEventId=$baseEventId, source_=$source_, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mergeEventId != null) {
      json[r'merge_event_id'] = this.mergeEventId;
    } else {
      json[r'merge_event_id'] = null;
    }
    if (this.eventsReplayed != null) {
      json[r'events_replayed'] = this.eventsReplayed;
    } else {
      json[r'events_replayed'] = null;
    }
    if (this.baseEventId != null) {
      json[r'base_event_id'] = this.baseEventId;
    } else {
      json[r'base_event_id'] = null;
    }
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
    return json;
  }

  /// Returns a new [MergeResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MergeResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MergeResult(
        mergeEventId: mapValueOfType<String>(json, r'merge_event_id'),
        eventsReplayed: mapValueOfType<int>(json, r'events_replayed'),
        baseEventId: mapValueOfType<String>(json, r'base_event_id'),
        source_: mapValueOfType<String>(json, r'source'),
        target: mapValueOfType<String>(json, r'target'),
      );
    }
    return null;
  }

  static List<MergeResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MergeResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MergeResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MergeResult> mapFromJson(dynamic json) {
    final map = <String, MergeResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MergeResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MergeResult-objects as value to a dart map
  static Map<String, List<MergeResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MergeResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MergeResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

