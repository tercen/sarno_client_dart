//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Project {
  /// Returns a new [Project] instance.
  Project({
    required this.id,
    required this.owner,
    required this.slug,
    required this.displayName,
    required this.visibility,
    required this.createdAt,
  });

  String id;

  /// 'org:<uuid>' or 'user:<username>'
  String owner;

  String slug;

  String displayName;

  Visibility visibility;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Project &&
    other.id == id &&
    other.owner == owner &&
    other.slug == slug &&
    other.displayName == displayName &&
    other.visibility == visibility &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (owner.hashCode) +
    (slug.hashCode) +
    (displayName.hashCode) +
    (visibility.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Project[id=$id, owner=$owner, slug=$slug, displayName=$displayName, visibility=$visibility, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'owner'] = this.owner;
      json[r'slug'] = this.slug;
      json[r'display_name'] = this.displayName;
      json[r'visibility'] = this.visibility;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Project] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Project? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Project[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Project[id]" has a null value in JSON.');
        assert(json.containsKey(r'owner'), 'Required key "Project[owner]" is missing from JSON.');
        assert(json[r'owner'] != null, 'Required key "Project[owner]" has a null value in JSON.');
        assert(json.containsKey(r'slug'), 'Required key "Project[slug]" is missing from JSON.');
        assert(json[r'slug'] != null, 'Required key "Project[slug]" has a null value in JSON.');
        assert(json.containsKey(r'display_name'), 'Required key "Project[display_name]" is missing from JSON.');
        assert(json[r'display_name'] != null, 'Required key "Project[display_name]" has a null value in JSON.');
        assert(json.containsKey(r'visibility'), 'Required key "Project[visibility]" is missing from JSON.');
        assert(json[r'visibility'] != null, 'Required key "Project[visibility]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "Project[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "Project[created_at]" has a null value in JSON.');
        return true;
      }());

      return Project(
        id: mapValueOfType<String>(json, r'id')!,
        owner: mapValueOfType<String>(json, r'owner')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        visibility: Visibility.fromJson(json[r'visibility'])!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<Project> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Project>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Project.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Project> mapFromJson(dynamic json) {
    final map = <String, Project>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Project.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Project-objects as value to a dart map
  static Map<String, List<Project>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Project>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Project.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'owner',
    'slug',
    'display_name',
    'visibility',
    'created_at',
  };
}

