//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// read < write < admin. Higher permissions subsume lower ones.
class ProjectPermission {
  /// Instantiate a new enum with the provided [value].
  const ProjectPermission._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const read = ProjectPermission._(r'read');
  static const write = ProjectPermission._(r'write');
  static const admin = ProjectPermission._(r'admin');

  /// List of all possible values in this [enum][ProjectPermission].
  static const values = <ProjectPermission>[
    read,
    write,
    admin,
  ];

  static ProjectPermission? fromJson(dynamic value) => ProjectPermissionTypeTransformer().decode(value);

  static List<ProjectPermission> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectPermission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectPermission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectPermission] to String,
/// and [decode] dynamic data back to [ProjectPermission].
class ProjectPermissionTypeTransformer {
  factory ProjectPermissionTypeTransformer() => _instance ??= const ProjectPermissionTypeTransformer._();

  const ProjectPermissionTypeTransformer._();

  String encode(ProjectPermission data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectPermission.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectPermission? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'read': return ProjectPermission.read;
        case r'write': return ProjectPermission.write;
        case r'admin': return ProjectPermission.admin;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectPermissionTypeTransformer] instance.
  static ProjectPermissionTypeTransformer? _instance;
}

