//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateGraph200Response {
  /// Returns a new [CreateGraph200Response] instance.
  CreateGraph200Response({
    required this.success,
    this.data,
  });

  CreateGraph200ResponseSuccessEnum success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GraphCreated? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateGraph200Response &&
    other.success == success &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'CreateGraph200Response[success=$success, data=$data]';

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

  /// Returns a new [CreateGraph200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateGraph200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "CreateGraph200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "CreateGraph200Response[success]" has a null value in JSON.');
        return true;
      }());

      return CreateGraph200Response(
        success: CreateGraph200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: GraphCreated.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<CreateGraph200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateGraph200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateGraph200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateGraph200Response> mapFromJson(dynamic json) {
    final map = <String, CreateGraph200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateGraph200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateGraph200Response-objects as value to a dart map
  static Map<String, List<CreateGraph200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateGraph200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateGraph200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class CreateGraph200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateGraph200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = CreateGraph200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][CreateGraph200ResponseSuccessEnum].
  static const values = <CreateGraph200ResponseSuccessEnum>[
    true_,
  ];

  static CreateGraph200ResponseSuccessEnum? fromJson(dynamic value) => CreateGraph200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<CreateGraph200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateGraph200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateGraph200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateGraph200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [CreateGraph200ResponseSuccessEnum].
class CreateGraph200ResponseSuccessEnumTypeTransformer {
  factory CreateGraph200ResponseSuccessEnumTypeTransformer() => _instance ??= const CreateGraph200ResponseSuccessEnumTypeTransformer._();

  const CreateGraph200ResponseSuccessEnumTypeTransformer._();

  bool encode(CreateGraph200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateGraph200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateGraph200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return CreateGraph200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateGraph200ResponseSuccessEnumTypeTransformer] instance.
  static CreateGraph200ResponseSuccessEnumTypeTransformer? _instance;
}


