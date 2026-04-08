//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateUser200Response {
  /// Returns a new [CreateUser200Response] instance.
  CreateUser200Response({
    required this.success,
    this.data,
  });

  CreateUser200ResponseSuccessEnum success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateUser200ResponseAllOfData? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUser200Response &&
    other.success == success &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'CreateUser200Response[success=$success, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    return json;
  }

  /// Returns a new [CreateUser200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUser200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "CreateUser200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "CreateUser200Response[success]" has a null value in JSON.');
        return true;
      }());

      return CreateUser200Response(
        success: CreateUser200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: CreateUser200ResponseAllOfData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<CreateUser200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUser200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUser200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUser200Response> mapFromJson(dynamic json) {
    final map = <String, CreateUser200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUser200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUser200Response-objects as value to a dart map
  static Map<String, List<CreateUser200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUser200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUser200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class CreateUser200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateUser200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = CreateUser200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][CreateUser200ResponseSuccessEnum].
  static const values = <CreateUser200ResponseSuccessEnum>[
    true_,
  ];

  static CreateUser200ResponseSuccessEnum? fromJson(dynamic value) => CreateUser200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<CreateUser200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUser200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUser200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateUser200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [CreateUser200ResponseSuccessEnum].
class CreateUser200ResponseSuccessEnumTypeTransformer {
  factory CreateUser200ResponseSuccessEnumTypeTransformer() => _instance ??= const CreateUser200ResponseSuccessEnumTypeTransformer._();

  const CreateUser200ResponseSuccessEnumTypeTransformer._();

  bool encode(CreateUser200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateUser200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateUser200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return CreateUser200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateUser200ResponseSuccessEnumTypeTransformer] instance.
  static CreateUser200ResponseSuccessEnumTypeTransformer? _instance;
}


