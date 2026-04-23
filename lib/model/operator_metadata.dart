//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OperatorMetadata {
  /// Returns a new [OperatorMetadata] instance.
  OperatorMetadata({
    required this.org,
    required this.name,
    required this.version,
    this.description,
    this.language,
    this.runtime,
    this.inputSpec,
    this.outputSpec,
    this.properties,
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

  OperatorMetadataLanguageEnum? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? inputSpec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? outputSpec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OperatorMetadata &&
    other.org == org &&
    other.name == name &&
    other.version == version &&
    other.description == description &&
    other.language == language &&
    other.runtime == runtime &&
    other.inputSpec == inputSpec &&
    other.outputSpec == outputSpec &&
    other.properties == properties;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (org.hashCode) +
    (name.hashCode) +
    (version.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (inputSpec == null ? 0 : inputSpec!.hashCode) +
    (outputSpec == null ? 0 : outputSpec!.hashCode) +
    (properties == null ? 0 : properties!.hashCode);

  @override
  String toString() => 'OperatorMetadata[org=$org, name=$name, version=$version, description=$description, language=$language, runtime=$runtime, inputSpec=$inputSpec, outputSpec=$outputSpec, properties=$properties]';

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
    if (this.runtime != null) {
      json[r'runtime'] = this.runtime;
    } else {
      json[r'runtime'] = null;
    }
    if (this.inputSpec != null) {
      json[r'input_spec'] = this.inputSpec;
    } else {
      json[r'input_spec'] = null;
    }
    if (this.outputSpec != null) {
      json[r'output_spec'] = this.outputSpec;
    } else {
      json[r'output_spec'] = null;
    }
    if (this.properties != null) {
      json[r'properties'] = this.properties;
    } else {
      json[r'properties'] = null;
    }
    return json;
  }

  /// Returns a new [OperatorMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OperatorMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OperatorMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OperatorMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OperatorMetadata(
        org: mapValueOfType<String>(json, r'org')!,
        name: mapValueOfType<String>(json, r'name')!,
        version: mapValueOfType<String>(json, r'version')!,
        description: mapValueOfType<String>(json, r'description'),
        language: OperatorMetadataLanguageEnum.fromJson(json[r'language']),
        runtime: mapValueOfType<String>(json, r'runtime'),
        inputSpec: mapValueOfType<Object>(json, r'input_spec'),
        outputSpec: mapValueOfType<Object>(json, r'output_spec'),
        properties: mapValueOfType<Object>(json, r'properties'),
      );
    }
    return null;
  }

  static List<OperatorMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperatorMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperatorMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OperatorMetadata> mapFromJson(dynamic json) {
    final map = <String, OperatorMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OperatorMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OperatorMetadata-objects as value to a dart map
  static Map<String, List<OperatorMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OperatorMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OperatorMetadata.listFromJson(entry.value, growable: growable,);
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


class OperatorMetadataLanguageEnum {
  /// Instantiate a new enum with the provided [value].
  const OperatorMetadataLanguageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const r = OperatorMetadataLanguageEnum._(r'r');
  static const python = OperatorMetadataLanguageEnum._(r'python');

  /// List of all possible values in this [enum][OperatorMetadataLanguageEnum].
  static const values = <OperatorMetadataLanguageEnum>[
    r,
    python,
  ];

  static OperatorMetadataLanguageEnum? fromJson(dynamic value) => OperatorMetadataLanguageEnumTypeTransformer().decode(value);

  static List<OperatorMetadataLanguageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperatorMetadataLanguageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperatorMetadataLanguageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OperatorMetadataLanguageEnum] to String,
/// and [decode] dynamic data back to [OperatorMetadataLanguageEnum].
class OperatorMetadataLanguageEnumTypeTransformer {
  factory OperatorMetadataLanguageEnumTypeTransformer() => _instance ??= const OperatorMetadataLanguageEnumTypeTransformer._();

  const OperatorMetadataLanguageEnumTypeTransformer._();

  String encode(OperatorMetadataLanguageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OperatorMetadataLanguageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OperatorMetadataLanguageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'r': return OperatorMetadataLanguageEnum.r;
        case r'python': return OperatorMetadataLanguageEnum.python;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OperatorMetadataLanguageEnumTypeTransformer] instance.
  static OperatorMetadataLanguageEnumTypeTransformer? _instance;
}


