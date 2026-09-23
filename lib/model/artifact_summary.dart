//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactSummary {
  /// Returns a new [ArtifactSummary] instance.
  ArtifactSummary({
    required this.id,
    required this.url,
    required this.title,
    required this.assembledBy,
    required this.assembledAt,
    required this.refCount,
    required this.viewerCanOpen,
    required this.missingRefCount,
    this.expiresAt,
  });

  String id;

  String url;

  String title;

  String assembledBy;

  DateTime assembledAt;

  int refCount;

  bool viewerCanOpen;

  /// References whose source document no longer exists; does not by itself block opening.
  int missingRefCount;

  /// Unix seconds deadline for the hourly TTL sweep to delete this artifact; null if no TTL is set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactSummary &&
    other.id == id &&
    other.url == url &&
    other.title == title &&
    other.assembledBy == assembledBy &&
    other.assembledAt == assembledAt &&
    other.refCount == refCount &&
    other.viewerCanOpen == viewerCanOpen &&
    other.missingRefCount == missingRefCount &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (title.hashCode) +
    (assembledBy.hashCode) +
    (assembledAt.hashCode) +
    (refCount.hashCode) +
    (viewerCanOpen.hashCode) +
    (missingRefCount.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'ArtifactSummary[id=$id, url=$url, title=$title, assembledBy=$assembledBy, assembledAt=$assembledAt, refCount=$refCount, viewerCanOpen=$viewerCanOpen, missingRefCount=$missingRefCount, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'title'] = this.title;
      json[r'assembled_by'] = this.assembledBy;
      json[r'assembled_at'] = this.assembledAt.toUtc().toIso8601String();
      json[r'ref_count'] = this.refCount;
      json[r'viewer_can_open'] = this.viewerCanOpen;
      json[r'missing_ref_count'] = this.missingRefCount;
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt;
    } else {
      json[r'expires_at'] = null;
    }
    return json;
  }

  /// Returns a new [ArtifactSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ArtifactSummary[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ArtifactSummary[id]" has a null value in JSON.');
        assert(json.containsKey(r'url'), 'Required key "ArtifactSummary[url]" is missing from JSON.');
        assert(json[r'url'] != null, 'Required key "ArtifactSummary[url]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "ArtifactSummary[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "ArtifactSummary[title]" has a null value in JSON.');
        assert(json.containsKey(r'assembled_by'), 'Required key "ArtifactSummary[assembled_by]" is missing from JSON.');
        assert(json[r'assembled_by'] != null, 'Required key "ArtifactSummary[assembled_by]" has a null value in JSON.');
        assert(json.containsKey(r'assembled_at'), 'Required key "ArtifactSummary[assembled_at]" is missing from JSON.');
        assert(json[r'assembled_at'] != null, 'Required key "ArtifactSummary[assembled_at]" has a null value in JSON.');
        assert(json.containsKey(r'ref_count'), 'Required key "ArtifactSummary[ref_count]" is missing from JSON.');
        assert(json[r'ref_count'] != null, 'Required key "ArtifactSummary[ref_count]" has a null value in JSON.');
        assert(json.containsKey(r'viewer_can_open'), 'Required key "ArtifactSummary[viewer_can_open]" is missing from JSON.');
        assert(json[r'viewer_can_open'] != null, 'Required key "ArtifactSummary[viewer_can_open]" has a null value in JSON.');
        assert(json.containsKey(r'missing_ref_count'), 'Required key "ArtifactSummary[missing_ref_count]" is missing from JSON.');
        assert(json[r'missing_ref_count'] != null, 'Required key "ArtifactSummary[missing_ref_count]" has a null value in JSON.');
        return true;
      }());

      return ArtifactSummary(
        id: mapValueOfType<String>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        title: mapValueOfType<String>(json, r'title')!,
        assembledBy: mapValueOfType<String>(json, r'assembled_by')!,
        assembledAt: mapDateTime(json, r'assembled_at', r'')!,
        refCount: mapValueOfType<int>(json, r'ref_count')!,
        viewerCanOpen: mapValueOfType<bool>(json, r'viewer_can_open')!,
        missingRefCount: mapValueOfType<int>(json, r'missing_ref_count')!,
        expiresAt: mapValueOfType<int>(json, r'expires_at'),
      );
    }
    return null;
  }

  static List<ArtifactSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactSummary> mapFromJson(dynamic json) {
    final map = <String, ArtifactSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactSummary-objects as value to a dart map
  static Map<String, List<ArtifactSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'title',
    'assembled_by',
    'assembled_at',
    'ref_count',
    'viewer_can_open',
    'missing_ref_count',
  };
}

