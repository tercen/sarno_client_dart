//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchHistoryEntry {
  /// Returns a new [PatchHistoryEntry] instance.
  PatchHistoryEntry({
    required this.sequence,
    required this.userId,
    this.message,
    required this.createdAt,
  });

  int sequence;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchHistoryEntry &&
    other.sequence == sequence &&
    other.userId == userId &&
    other.message == message &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sequence.hashCode) +
    (userId.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'PatchHistoryEntry[sequence=$sequence, userId=$userId, message=$message, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sequence'] = this.sequence;
      json[r'user_id'] = this.userId;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PatchHistoryEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchHistoryEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'sequence'), 'Required key "PatchHistoryEntry[sequence]" is missing from JSON.');
        assert(json[r'sequence'] != null, 'Required key "PatchHistoryEntry[sequence]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "PatchHistoryEntry[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "PatchHistoryEntry[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "PatchHistoryEntry[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "PatchHistoryEntry[created_at]" has a null value in JSON.');
        return true;
      }());

      return PatchHistoryEntry(
        sequence: mapValueOfType<int>(json, r'sequence')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        message: mapValueOfType<String>(json, r'message'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<PatchHistoryEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchHistoryEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchHistoryEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchHistoryEntry> mapFromJson(dynamic json) {
    final map = <String, PatchHistoryEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchHistoryEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchHistoryEntry-objects as value to a dart map
  static Map<String, List<PatchHistoryEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchHistoryEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchHistoryEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sequence',
    'user_id',
    'created_at',
  };
}

