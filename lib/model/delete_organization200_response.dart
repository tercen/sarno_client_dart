//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteOrganization200Response {
  /// Returns a new [DeleteOrganization200Response] instance.
  DeleteOrganization200Response({
    required this.success,
    this.data,
  });

  DeleteOrganization200ResponseSuccessEnum success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeleteOrganization200ResponseAllOfData? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteOrganization200Response &&
    other.success == success &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'DeleteOrganization200Response[success=$success, data=$data]';

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

  /// Returns a new [DeleteOrganization200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteOrganization200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "DeleteOrganization200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "DeleteOrganization200Response[success]" has a null value in JSON.');
        return true;
      }());

      return DeleteOrganization200Response(
        success: DeleteOrganization200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: DeleteOrganization200ResponseAllOfData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<DeleteOrganization200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteOrganization200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteOrganization200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteOrganization200Response> mapFromJson(dynamic json) {
    final map = <String, DeleteOrganization200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteOrganization200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteOrganization200Response-objects as value to a dart map
  static Map<String, List<DeleteOrganization200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteOrganization200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteOrganization200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class DeleteOrganization200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const DeleteOrganization200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = DeleteOrganization200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][DeleteOrganization200ResponseSuccessEnum].
  static const values = <DeleteOrganization200ResponseSuccessEnum>[
    true_,
  ];

  static DeleteOrganization200ResponseSuccessEnum? fromJson(dynamic value) => DeleteOrganization200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<DeleteOrganization200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteOrganization200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteOrganization200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeleteOrganization200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [DeleteOrganization200ResponseSuccessEnum].
class DeleteOrganization200ResponseSuccessEnumTypeTransformer {
  factory DeleteOrganization200ResponseSuccessEnumTypeTransformer() => _instance ??= const DeleteOrganization200ResponseSuccessEnumTypeTransformer._();

  const DeleteOrganization200ResponseSuccessEnumTypeTransformer._();

  bool encode(DeleteOrganization200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeleteOrganization200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeleteOrganization200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return DeleteOrganization200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeleteOrganization200ResponseSuccessEnumTypeTransformer] instance.
  static DeleteOrganization200ResponseSuccessEnumTypeTransformer? _instance;
}


