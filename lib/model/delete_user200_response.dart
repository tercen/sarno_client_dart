//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteUser200Response {
  /// Returns a new [DeleteUser200Response] instance.
  DeleteUser200Response({
    required this.success,
    this.data,
  });

  DeleteUser200ResponseSuccessEnum success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeleteUser200ResponseAllOfData? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteUser200Response &&
    other.success == success &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'DeleteUser200Response[success=$success, data=$data]';

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

  /// Returns a new [DeleteUser200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteUser200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "DeleteUser200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "DeleteUser200Response[success]" has a null value in JSON.');
        return true;
      }());

      return DeleteUser200Response(
        success: DeleteUser200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: DeleteUser200ResponseAllOfData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<DeleteUser200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteUser200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteUser200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteUser200Response> mapFromJson(dynamic json) {
    final map = <String, DeleteUser200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteUser200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteUser200Response-objects as value to a dart map
  static Map<String, List<DeleteUser200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteUser200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteUser200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class DeleteUser200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const DeleteUser200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = DeleteUser200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][DeleteUser200ResponseSuccessEnum].
  static const values = <DeleteUser200ResponseSuccessEnum>[
    true_,
  ];

  static DeleteUser200ResponseSuccessEnum? fromJson(dynamic value) => DeleteUser200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<DeleteUser200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteUser200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteUser200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeleteUser200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [DeleteUser200ResponseSuccessEnum].
class DeleteUser200ResponseSuccessEnumTypeTransformer {
  factory DeleteUser200ResponseSuccessEnumTypeTransformer() => _instance ??= const DeleteUser200ResponseSuccessEnumTypeTransformer._();

  const DeleteUser200ResponseSuccessEnumTypeTransformer._();

  bool encode(DeleteUser200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeleteUser200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeleteUser200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return DeleteUser200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeleteUser200ResponseSuccessEnumTypeTransformer] instance.
  static DeleteUser200ResponseSuccessEnumTypeTransformer? _instance;
}


