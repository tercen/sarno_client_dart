//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MergeRequest {
  /// Returns a new [MergeRequest] instance.
  MergeRequest({
    required this.source_,
    this.target,
    this.message,
  });

  /// Source branch (where the new events are). The orchestrator's `/apply` flow passes `agent-<discussion_id>` here.
  String source_;

  /// Target branch that will receive the events. Defaults to `main`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// Merge commit message. Defaults to `Merge <source> into <target>`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MergeRequest &&
    other.source_ == source_ &&
    other.target == target &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (source_.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'MergeRequest[source_=$source_, target=$target, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'source'] = this.source_;
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [MergeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MergeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'source'), 'Required key "MergeRequest[source]" is missing from JSON.');
        assert(json[r'source'] != null, 'Required key "MergeRequest[source]" has a null value in JSON.');
        return true;
      }());

      return MergeRequest(
        source_: mapValueOfType<String>(json, r'source')!,
        target: mapValueOfType<String>(json, r'target'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<MergeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MergeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MergeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MergeRequest> mapFromJson(dynamic json) {
    final map = <String, MergeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MergeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MergeRequest-objects as value to a dart map
  static Map<String, List<MergeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MergeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MergeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source',
  };
}

