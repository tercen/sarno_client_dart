//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Organization {
  /// Returns a new [Organization] instance.
  Organization({
    required this.id,
    required this.slug,
    required this.displayName,
    required this.createdAt,
  });

  String id;

  /// URL-safe, unique identifier
  String slug;

  String displayName;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Organization &&
    other.id == id &&
    other.slug == slug &&
    other.displayName == displayName &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (slug.hashCode) +
    (displayName.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Organization[id=$id, slug=$slug, displayName=$displayName, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'slug'] = this.slug;
      json[r'display_name'] = this.displayName;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Organization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Organization? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Organization[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Organization[id]" has a null value in JSON.');
        assert(json.containsKey(r'slug'), 'Required key "Organization[slug]" is missing from JSON.');
        assert(json[r'slug'] != null, 'Required key "Organization[slug]" has a null value in JSON.');
        assert(json.containsKey(r'display_name'), 'Required key "Organization[display_name]" is missing from JSON.');
        assert(json[r'display_name'] != null, 'Required key "Organization[display_name]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "Organization[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "Organization[created_at]" has a null value in JSON.');
        return true;
      }());

      return Organization(
        id: mapValueOfType<String>(json, r'id')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<Organization> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Organization>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Organization.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Organization> mapFromJson(dynamic json) {
    final map = <String, Organization>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Organization.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Organization-objects as value to a dart map
  static Map<String, List<Organization>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Organization>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Organization.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'slug',
    'display_name',
    'created_at',
  };
}

