//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiErr {
  /// Returns a new [ApiErr] instance.
  ApiErr({
    required this.success,
    required this.error,
  });

  ApiErrSuccessEnum success;

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiErr &&
    other.success == success &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (error.hashCode);

  @override
  String toString() => 'ApiErr[success=$success, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'error'] = this.error;
    return json;
  }

  /// Returns a new [ApiErr] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiErr? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ApiErr[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ApiErr[success]" has a null value in JSON.');
        assert(json.containsKey(r'error'), 'Required key "ApiErr[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "ApiErr[error]" has a null value in JSON.');
        return true;
      }());

      return ApiErr(
        success: ApiErrSuccessEnum.fromJson(json[r'success'])!,
        error: mapValueOfType<String>(json, r'error')!,
      );
    }
    return null;
  }

  static List<ApiErr> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiErr>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiErr.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiErr> mapFromJson(dynamic json) {
    final map = <String, ApiErr>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiErr.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiErr-objects as value to a dart map
  static Map<String, List<ApiErr>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiErr>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiErr.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'error',
  };
}


class ApiErrSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const ApiErrSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const false_ = ApiErrSuccessEnum._('false');

  /// List of all possible values in this [enum][ApiErrSuccessEnum].
  static const values = <ApiErrSuccessEnum>[
    false_,
  ];

  static ApiErrSuccessEnum? fromJson(dynamic value) => ApiErrSuccessEnumTypeTransformer().decode(value);

  static List<ApiErrSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiErrSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiErrSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApiErrSuccessEnum] to bool,
/// and [decode] dynamic data back to [ApiErrSuccessEnum].
class ApiErrSuccessEnumTypeTransformer {
  factory ApiErrSuccessEnumTypeTransformer() => _instance ??= const ApiErrSuccessEnumTypeTransformer._();

  const ApiErrSuccessEnumTypeTransformer._();

  bool encode(ApiErrSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApiErrSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApiErrSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'false': return ApiErrSuccessEnum.false_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ApiErrSuccessEnumTypeTransformer] instance.
  static ApiErrSuccessEnumTypeTransformer? _instance;
}


