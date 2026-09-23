//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateArtifactRequest {
  /// Returns a new [CreateArtifactRequest] instance.
  CreateArtifactRequest({
    required this.title,
    required this.bodyHtml,
    this.refs = const [],
    this.name,
    this.ttlSeconds,
  });

  String title;

  /// Raw HTML; sanitized and size/nesting-capped server-side (see doc/artifacts.md).
  String bodyHtml;

  List<ArtifactRefInput> refs;

  /// Document filename; defaults to a name derived from the title.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Optional auto-expiry, in seconds from now (max ~1 year). On create: omit for \"never expires\". On update: omit to leave any existing TTL untouched — there is no separate call to clear it. Must be a positive whole number of seconds; a JSON float is rejected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttlSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateArtifactRequest &&
    other.title == title &&
    other.bodyHtml == bodyHtml &&
    _deepEquality.equals(other.refs, refs) &&
    other.name == name &&
    other.ttlSeconds == ttlSeconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title.hashCode) +
    (bodyHtml.hashCode) +
    (refs.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ttlSeconds == null ? 0 : ttlSeconds!.hashCode);

  @override
  String toString() => 'CreateArtifactRequest[title=$title, bodyHtml=$bodyHtml, refs=$refs, name=$name, ttlSeconds=$ttlSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = this.title;
      json[r'body_html'] = this.bodyHtml;
      json[r'refs'] = this.refs;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ttlSeconds != null) {
      json[r'ttl_seconds'] = this.ttlSeconds;
    } else {
      json[r'ttl_seconds'] = null;
    }
    return json;
  }

  /// Returns a new [CreateArtifactRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateArtifactRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'title'), 'Required key "CreateArtifactRequest[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "CreateArtifactRequest[title]" has a null value in JSON.');
        assert(json.containsKey(r'body_html'), 'Required key "CreateArtifactRequest[body_html]" is missing from JSON.');
        assert(json[r'body_html'] != null, 'Required key "CreateArtifactRequest[body_html]" has a null value in JSON.');
        return true;
      }());

      return CreateArtifactRequest(
        title: mapValueOfType<String>(json, r'title')!,
        bodyHtml: mapValueOfType<String>(json, r'body_html')!,
        refs: ArtifactRefInput.listFromJson(json[r'refs']),
        name: mapValueOfType<String>(json, r'name'),
        ttlSeconds: mapValueOfType<int>(json, r'ttl_seconds'),
      );
    }
    return null;
  }

  static List<CreateArtifactRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateArtifactRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateArtifactRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateArtifactRequest> mapFromJson(dynamic json) {
    final map = <String, CreateArtifactRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateArtifactRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateArtifactRequest-objects as value to a dart map
  static Map<String, List<CreateArtifactRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateArtifactRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateArtifactRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'body_html',
  };
}

