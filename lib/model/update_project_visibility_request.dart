//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateProjectVisibilityRequest {
  /// Returns a new [UpdateProjectVisibilityRequest] instance.
  UpdateProjectVisibilityRequest({
    required this.visibility,
  });

  /// \"internal\" is currently a no-op grant on a user:-owned project (Internal visibility only grants Read within the same org, and personal projects have no org) and is rejected with 400 rather than silently accepted.
  UpdateProjectVisibilityRequestVisibilityEnum visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateProjectVisibilityRequest &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (visibility.hashCode);

  @override
  String toString() => 'UpdateProjectVisibilityRequest[visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'visibility'] = this.visibility;
    return json;
  }

  /// Returns a new [UpdateProjectVisibilityRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateProjectVisibilityRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'visibility'), 'Required key "UpdateProjectVisibilityRequest[visibility]" is missing from JSON.');
        assert(json[r'visibility'] != null, 'Required key "UpdateProjectVisibilityRequest[visibility]" has a null value in JSON.');
        return true;
      }());

      return UpdateProjectVisibilityRequest(
        visibility: UpdateProjectVisibilityRequestVisibilityEnum.fromJson(json[r'visibility'])!,
      );
    }
    return null;
  }

  static List<UpdateProjectVisibilityRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateProjectVisibilityRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateProjectVisibilityRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateProjectVisibilityRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateProjectVisibilityRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateProjectVisibilityRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateProjectVisibilityRequest-objects as value to a dart map
  static Map<String, List<UpdateProjectVisibilityRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateProjectVisibilityRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateProjectVisibilityRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'visibility',
  };
}

/// \"internal\" is currently a no-op grant on a user:-owned project (Internal visibility only grants Read within the same org, and personal projects have no org) and is rejected with 400 rather than silently accepted.
class UpdateProjectVisibilityRequestVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateProjectVisibilityRequestVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const private = UpdateProjectVisibilityRequestVisibilityEnum._(r'private');
  static const internal = UpdateProjectVisibilityRequestVisibilityEnum._(r'internal');
  static const public = UpdateProjectVisibilityRequestVisibilityEnum._(r'public');

  /// List of all possible values in this [enum][UpdateProjectVisibilityRequestVisibilityEnum].
  static const values = <UpdateProjectVisibilityRequestVisibilityEnum>[
    private,
    internal,
    public,
  ];

  static UpdateProjectVisibilityRequestVisibilityEnum? fromJson(dynamic value) => UpdateProjectVisibilityRequestVisibilityEnumTypeTransformer().decode(value);

  static List<UpdateProjectVisibilityRequestVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateProjectVisibilityRequestVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateProjectVisibilityRequestVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateProjectVisibilityRequestVisibilityEnum] to String,
/// and [decode] dynamic data back to [UpdateProjectVisibilityRequestVisibilityEnum].
class UpdateProjectVisibilityRequestVisibilityEnumTypeTransformer {
  factory UpdateProjectVisibilityRequestVisibilityEnumTypeTransformer() => _instance ??= const UpdateProjectVisibilityRequestVisibilityEnumTypeTransformer._();

  const UpdateProjectVisibilityRequestVisibilityEnumTypeTransformer._();

  String encode(UpdateProjectVisibilityRequestVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateProjectVisibilityRequestVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateProjectVisibilityRequestVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'private': return UpdateProjectVisibilityRequestVisibilityEnum.private;
        case r'internal': return UpdateProjectVisibilityRequestVisibilityEnum.internal;
        case r'public': return UpdateProjectVisibilityRequestVisibilityEnum.public;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateProjectVisibilityRequestVisibilityEnumTypeTransformer] instance.
  static UpdateProjectVisibilityRequestVisibilityEnumTypeTransformer? _instance;
}


