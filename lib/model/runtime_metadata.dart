//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RuntimeMetadata {
  /// Returns a new [RuntimeMetadata] instance.
  RuntimeMetadata({
    required this.org,
    required this.name,
    required this.version,
    this.description,
    this.language,
    this.baseImage,
    this.packages,
  });

  String org;

  String name;

  String version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baseImage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? packages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RuntimeMetadata &&
    other.org == org &&
    other.name == name &&
    other.version == version &&
    other.description == description &&
    other.language == language &&
    other.baseImage == baseImage &&
    other.packages == packages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (org.hashCode) +
    (name.hashCode) +
    (version.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (baseImage == null ? 0 : baseImage!.hashCode) +
    (packages == null ? 0 : packages!.hashCode);

  @override
  String toString() => 'RuntimeMetadata[org=$org, name=$name, version=$version, description=$description, language=$language, baseImage=$baseImage, packages=$packages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'org'] = this.org;
      json[r'name'] = this.name;
      json[r'version'] = this.version;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.baseImage != null) {
      json[r'base_image'] = this.baseImage;
    } else {
      json[r'base_image'] = null;
    }
    if (this.packages != null) {
      json[r'packages'] = this.packages;
    } else {
      json[r'packages'] = null;
    }
    return json;
  }

  /// Returns a new [RuntimeMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RuntimeMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'org'), 'Required key "RuntimeMetadata[org]" is missing from JSON.');
        assert(json[r'org'] != null, 'Required key "RuntimeMetadata[org]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "RuntimeMetadata[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "RuntimeMetadata[name]" has a null value in JSON.');
        assert(json.containsKey(r'version'), 'Required key "RuntimeMetadata[version]" is missing from JSON.');
        assert(json[r'version'] != null, 'Required key "RuntimeMetadata[version]" has a null value in JSON.');
        return true;
      }());

      return RuntimeMetadata(
        org: mapValueOfType<String>(json, r'org')!,
        name: mapValueOfType<String>(json, r'name')!,
        version: mapValueOfType<String>(json, r'version')!,
        description: mapValueOfType<String>(json, r'description'),
        language: mapValueOfType<String>(json, r'language'),
        baseImage: mapValueOfType<String>(json, r'base_image'),
        packages: mapValueOfType<Object>(json, r'packages'),
      );
    }
    return null;
  }

  static List<RuntimeMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RuntimeMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RuntimeMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RuntimeMetadata> mapFromJson(dynamic json) {
    final map = <String, RuntimeMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RuntimeMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RuntimeMetadata-objects as value to a dart map
  static Map<String, List<RuntimeMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RuntimeMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RuntimeMetadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'org',
    'name',
    'version',
  };
}

