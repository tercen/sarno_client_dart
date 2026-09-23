//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResolveArtifactCommentRequest {
  /// Returns a new [ResolveArtifactCommentRequest] instance.
  ResolveArtifactCommentRequest({
    this.resolved = true,
  });

  bool resolved;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResolveArtifactCommentRequest &&
    other.resolved == resolved;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resolved.hashCode);

  @override
  String toString() => 'ResolveArtifactCommentRequest[resolved=$resolved]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'resolved'] = this.resolved;
    return json;
  }

  /// Returns a new [ResolveArtifactCommentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResolveArtifactCommentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ResolveArtifactCommentRequest(
        resolved: mapValueOfType<bool>(json, r'resolved') ?? true,
      );
    }
    return null;
  }

  static List<ResolveArtifactCommentRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResolveArtifactCommentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResolveArtifactCommentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResolveArtifactCommentRequest> mapFromJson(dynamic json) {
    final map = <String, ResolveArtifactCommentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResolveArtifactCommentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResolveArtifactCommentRequest-objects as value to a dart map
  static Map<String, List<ResolveArtifactCommentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResolveArtifactCommentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResolveArtifactCommentRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

