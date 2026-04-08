//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddProjectCollaborator200Response {
  /// Returns a new [AddProjectCollaborator200Response] instance.
  AddProjectCollaborator200Response({
    required this.success,
    this.data,
  });

  AddProjectCollaborator200ResponseSuccessEnum success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectCollaborator? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddProjectCollaborator200Response &&
    other.success == success &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'AddProjectCollaborator200Response[success=$success, data=$data]';

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

  /// Returns a new [AddProjectCollaborator200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddProjectCollaborator200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "AddProjectCollaborator200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "AddProjectCollaborator200Response[success]" has a null value in JSON.');
        return true;
      }());

      return AddProjectCollaborator200Response(
        success: AddProjectCollaborator200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: ProjectCollaborator.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<AddProjectCollaborator200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddProjectCollaborator200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddProjectCollaborator200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddProjectCollaborator200Response> mapFromJson(dynamic json) {
    final map = <String, AddProjectCollaborator200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddProjectCollaborator200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddProjectCollaborator200Response-objects as value to a dart map
  static Map<String, List<AddProjectCollaborator200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddProjectCollaborator200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddProjectCollaborator200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class AddProjectCollaborator200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const AddProjectCollaborator200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = AddProjectCollaborator200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][AddProjectCollaborator200ResponseSuccessEnum].
  static const values = <AddProjectCollaborator200ResponseSuccessEnum>[
    true_,
  ];

  static AddProjectCollaborator200ResponseSuccessEnum? fromJson(dynamic value) => AddProjectCollaborator200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<AddProjectCollaborator200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddProjectCollaborator200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddProjectCollaborator200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AddProjectCollaborator200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [AddProjectCollaborator200ResponseSuccessEnum].
class AddProjectCollaborator200ResponseSuccessEnumTypeTransformer {
  factory AddProjectCollaborator200ResponseSuccessEnumTypeTransformer() => _instance ??= const AddProjectCollaborator200ResponseSuccessEnumTypeTransformer._();

  const AddProjectCollaborator200ResponseSuccessEnumTypeTransformer._();

  bool encode(AddProjectCollaborator200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AddProjectCollaborator200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AddProjectCollaborator200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return AddProjectCollaborator200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AddProjectCollaborator200ResponseSuccessEnumTypeTransformer] instance.
  static AddProjectCollaborator200ResponseSuccessEnumTypeTransformer? _instance;
}


