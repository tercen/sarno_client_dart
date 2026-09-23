//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactComment {
  /// Returns a new [ArtifactComment] instance.
  ArtifactComment({
    required this.id,
    this.refKey,
    required this.author,
    required this.body,
    required this.createdAt,
    required this.onCurrentVersion,
    required this.resolved,
    this.resolvedBy,
    this.resolvedAt,
  });

  String id;

  /// Reference the comment is pinned to; null for the whole artifact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refKey;

  String author;

  String body;

  DateTime createdAt;

  /// False for comments made before the artifact was last regenerated.
  bool onCurrentVersion;

  bool resolved;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resolvedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? resolvedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactComment &&
    other.id == id &&
    other.refKey == refKey &&
    other.author == author &&
    other.body == body &&
    other.createdAt == createdAt &&
    other.onCurrentVersion == onCurrentVersion &&
    other.resolved == resolved &&
    other.resolvedBy == resolvedBy &&
    other.resolvedAt == resolvedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (refKey == null ? 0 : refKey!.hashCode) +
    (author.hashCode) +
    (body.hashCode) +
    (createdAt.hashCode) +
    (onCurrentVersion.hashCode) +
    (resolved.hashCode) +
    (resolvedBy == null ? 0 : resolvedBy!.hashCode) +
    (resolvedAt == null ? 0 : resolvedAt!.hashCode);

  @override
  String toString() => 'ArtifactComment[id=$id, refKey=$refKey, author=$author, body=$body, createdAt=$createdAt, onCurrentVersion=$onCurrentVersion, resolved=$resolved, resolvedBy=$resolvedBy, resolvedAt=$resolvedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.refKey != null) {
      json[r'ref_key'] = this.refKey;
    } else {
      json[r'ref_key'] = null;
    }
      json[r'author'] = this.author;
      json[r'body'] = this.body;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'on_current_version'] = this.onCurrentVersion;
      json[r'resolved'] = this.resolved;
    if (this.resolvedBy != null) {
      json[r'resolved_by'] = this.resolvedBy;
    } else {
      json[r'resolved_by'] = null;
    }
    if (this.resolvedAt != null) {
      json[r'resolved_at'] = this.resolvedAt!.toUtc().toIso8601String();
    } else {
      json[r'resolved_at'] = null;
    }
    return json;
  }

  /// Returns a new [ArtifactComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactComment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ArtifactComment[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ArtifactComment[id]" has a null value in JSON.');
        assert(json.containsKey(r'author'), 'Required key "ArtifactComment[author]" is missing from JSON.');
        assert(json[r'author'] != null, 'Required key "ArtifactComment[author]" has a null value in JSON.');
        assert(json.containsKey(r'body'), 'Required key "ArtifactComment[body]" is missing from JSON.');
        assert(json[r'body'] != null, 'Required key "ArtifactComment[body]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "ArtifactComment[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "ArtifactComment[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'on_current_version'), 'Required key "ArtifactComment[on_current_version]" is missing from JSON.');
        assert(json[r'on_current_version'] != null, 'Required key "ArtifactComment[on_current_version]" has a null value in JSON.');
        assert(json.containsKey(r'resolved'), 'Required key "ArtifactComment[resolved]" is missing from JSON.');
        assert(json[r'resolved'] != null, 'Required key "ArtifactComment[resolved]" has a null value in JSON.');
        return true;
      }());

      return ArtifactComment(
        id: mapValueOfType<String>(json, r'id')!,
        refKey: mapValueOfType<String>(json, r'ref_key'),
        author: mapValueOfType<String>(json, r'author')!,
        body: mapValueOfType<String>(json, r'body')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        onCurrentVersion: mapValueOfType<bool>(json, r'on_current_version')!,
        resolved: mapValueOfType<bool>(json, r'resolved')!,
        resolvedBy: mapValueOfType<String>(json, r'resolved_by'),
        resolvedAt: mapDateTime(json, r'resolved_at', r''),
      );
    }
    return null;
  }

  static List<ArtifactComment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactComment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactComment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactComment> mapFromJson(dynamic json) {
    final map = <String, ArtifactComment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactComment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactComment-objects as value to a dart map
  static Map<String, List<ArtifactComment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactComment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactComment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'author',
    'body',
    'created_at',
    'on_current_version',
    'resolved',
  };
}

