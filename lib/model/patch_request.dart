//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchRequest {
  /// Returns a new [PatchRequest] instance.
  PatchRequest({
    required this.revision,
    this.userId,
    this.message,
    this.patch_ = const [],
  });

  int revision;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// RFC 6902 JSON Patch operations
  List<JsonPatchOp> patch_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchRequest &&
    other.revision == revision &&
    other.userId == userId &&
    other.message == message &&
    _deepEquality.equals(other.patch_, patch_);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (revision.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (patch_.hashCode);

  @override
  String toString() => 'PatchRequest[revision=$revision, userId=$userId, message=$message, patch_=$patch_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'revision'] = this.revision;
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'patch'] = this.patch_;
    return json;
  }

  /// Returns a new [PatchRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'revision'), 'Required key "PatchRequest[revision]" is missing from JSON.');
        assert(json[r'revision'] != null, 'Required key "PatchRequest[revision]" has a null value in JSON.');
        assert(json.containsKey(r'patch'), 'Required key "PatchRequest[patch]" is missing from JSON.');
        assert(json[r'patch'] != null, 'Required key "PatchRequest[patch]" has a null value in JSON.');
        return true;
      }());

      return PatchRequest(
        revision: mapValueOfType<int>(json, r'revision')!,
        userId: mapValueOfType<String>(json, r'user_id'),
        message: mapValueOfType<String>(json, r'message'),
        patch_: JsonPatchOp.listFromJson(json[r'patch']),
      );
    }
    return null;
  }

  static List<PatchRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchRequest> mapFromJson(dynamic json) {
    final map = <String, PatchRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchRequest-objects as value to a dart map
  static Map<String, List<PatchRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'revision',
    'patch',
  };
}

