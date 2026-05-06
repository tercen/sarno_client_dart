//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Team {
  /// Returns a new [Team] instance.
  Team({
    required this.id,
    required this.orgId,
    required this.slug,
    required this.displayName,
    required this.createdAt,
  });

  String id;

  String orgId;

  String slug;

  String displayName;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Team &&
    other.id == id &&
    other.orgId == orgId &&
    other.slug == slug &&
    other.displayName == displayName &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (orgId.hashCode) +
    (slug.hashCode) +
    (displayName.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'Team[id=$id, orgId=$orgId, slug=$slug, displayName=$displayName, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'org_id'] = this.orgId;
      json[r'slug'] = this.slug;
      json[r'display_name'] = this.displayName;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Team] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Team? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Team[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Team[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Team(
        id: mapValueOfType<String>(json, r'id')!,
        orgId: mapValueOfType<String>(json, r'org_id')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<Team> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Team>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Team.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Team> mapFromJson(dynamic json) {
    final map = <String, Team>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Team.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Team-objects as value to a dart map
  static Map<String, List<Team>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Team>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Team.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'org_id',
    'slug',
    'display_name',
    'created_at',
  };
}

