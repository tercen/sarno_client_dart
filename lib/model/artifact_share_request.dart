//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactShareRequest {
  /// Returns a new [ArtifactShareRequest] instance.
  ArtifactShareRequest({
    required this.username,
    this.permission = const ArtifactShareRequestPermissionEnum._('read'),
  });

  String username;

  ArtifactShareRequestPermissionEnum permission;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactShareRequest &&
    other.username == username &&
    other.permission == permission;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (permission.hashCode);

  @override
  String toString() => 'ArtifactShareRequest[username=$username, permission=$permission]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'permission'] = this.permission;
    return json;
  }

  /// Returns a new [ArtifactShareRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactShareRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'username'), 'Required key "ArtifactShareRequest[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "ArtifactShareRequest[username]" has a null value in JSON.');
        return true;
      }());

      return ArtifactShareRequest(
        username: mapValueOfType<String>(json, r'username')!,
        permission: ArtifactShareRequestPermissionEnum.fromJson(json[r'permission']) ?? const ArtifactShareRequestPermissionEnum._('read'),
      );
    }
    return null;
  }

  static List<ArtifactShareRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactShareRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactShareRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactShareRequest> mapFromJson(dynamic json) {
    final map = <String, ArtifactShareRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactShareRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactShareRequest-objects as value to a dart map
  static Map<String, List<ArtifactShareRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactShareRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactShareRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
  };
}


class ArtifactShareRequestPermissionEnum {
  /// Instantiate a new enum with the provided [value].
  const ArtifactShareRequestPermissionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const read = ArtifactShareRequestPermissionEnum._(r'read');
  static const write = ArtifactShareRequestPermissionEnum._(r'write');
  static const admin = ArtifactShareRequestPermissionEnum._(r'admin');

  /// List of all possible values in this [enum][ArtifactShareRequestPermissionEnum].
  static const values = <ArtifactShareRequestPermissionEnum>[
    read,
    write,
    admin,
  ];

  static ArtifactShareRequestPermissionEnum? fromJson(dynamic value) => ArtifactShareRequestPermissionEnumTypeTransformer().decode(value);

  static List<ArtifactShareRequestPermissionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactShareRequestPermissionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactShareRequestPermissionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ArtifactShareRequestPermissionEnum] to String,
/// and [decode] dynamic data back to [ArtifactShareRequestPermissionEnum].
class ArtifactShareRequestPermissionEnumTypeTransformer {
  factory ArtifactShareRequestPermissionEnumTypeTransformer() => _instance ??= const ArtifactShareRequestPermissionEnumTypeTransformer._();

  const ArtifactShareRequestPermissionEnumTypeTransformer._();

  String encode(ArtifactShareRequestPermissionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ArtifactShareRequestPermissionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ArtifactShareRequestPermissionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'read': return ArtifactShareRequestPermissionEnum.read;
        case r'write': return ArtifactShareRequestPermissionEnum.write;
        case r'admin': return ArtifactShareRequestPermissionEnum.admin;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ArtifactShareRequestPermissionEnumTypeTransformer] instance.
  static ArtifactShareRequestPermissionEnumTypeTransformer? _instance;
}


