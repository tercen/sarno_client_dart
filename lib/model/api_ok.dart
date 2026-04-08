//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiOk {
  /// Returns a new [ApiOk] instance.
  ApiOk({
    required this.success,
  });

  ApiOkSuccessEnum success;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiOk &&
    other.success == success;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode);

  @override
  String toString() => 'ApiOk[success=$success]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
    return json;
  }

  /// Returns a new [ApiOk] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiOk? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ApiOk[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ApiOk[success]" has a null value in JSON.');
        return true;
      }());

      return ApiOk(
        success: ApiOkSuccessEnum.fromJson(json[r'success'])!,
      );
    }
    return null;
  }

  static List<ApiOk> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiOk>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiOk.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiOk> mapFromJson(dynamic json) {
    final map = <String, ApiOk>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiOk.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiOk-objects as value to a dart map
  static Map<String, List<ApiOk>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiOk>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiOk.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class ApiOkSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const ApiOkSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = ApiOkSuccessEnum._('true');

  /// List of all possible values in this [enum][ApiOkSuccessEnum].
  static const values = <ApiOkSuccessEnum>[
    true_,
  ];

  static ApiOkSuccessEnum? fromJson(dynamic value) => ApiOkSuccessEnumTypeTransformer().decode(value);

  static List<ApiOkSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiOkSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiOkSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApiOkSuccessEnum] to bool,
/// and [decode] dynamic data back to [ApiOkSuccessEnum].
class ApiOkSuccessEnumTypeTransformer {
  factory ApiOkSuccessEnumTypeTransformer() => _instance ??= const ApiOkSuccessEnumTypeTransformer._();

  const ApiOkSuccessEnumTypeTransformer._();

  bool encode(ApiOkSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApiOkSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApiOkSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return ApiOkSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ApiOkSuccessEnumTypeTransformer] instance.
  static ApiOkSuccessEnumTypeTransformer? _instance;
}


