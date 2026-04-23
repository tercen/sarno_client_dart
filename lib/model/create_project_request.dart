//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateProjectRequest {
  /// Returns a new [CreateProjectRequest] instance.
  CreateProjectRequest({
    required this.owner,
    required this.slug,
    required this.displayName,
    this.visibility,
  });

  /// 'org:<uuid>' or 'user:<username>'
  String owner;

  String slug;

  String displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Visibility? visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateProjectRequest &&
    other.owner == owner &&
    other.slug == slug &&
    other.displayName == displayName &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (owner.hashCode) +
    (slug.hashCode) +
    (displayName.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'CreateProjectRequest[owner=$owner, slug=$slug, displayName=$displayName, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'owner'] = this.owner;
      json[r'slug'] = this.slug;
      json[r'display_name'] = this.displayName;
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    return json;
  }

  /// Returns a new [CreateProjectRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateProjectRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateProjectRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateProjectRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateProjectRequest(
        owner: mapValueOfType<String>(json, r'owner')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        displayName: mapValueOfType<String>(json, r'display_name')!,
        visibility: Visibility.fromJson(json[r'visibility']),
      );
    }
    return null;
  }

  static List<CreateProjectRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProjectRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProjectRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateProjectRequest> mapFromJson(dynamic json) {
    final map = <String, CreateProjectRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProjectRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateProjectRequest-objects as value to a dart map
  static Map<String, List<CreateProjectRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateProjectRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateProjectRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'owner',
    'slug',
    'display_name',
  };
}

