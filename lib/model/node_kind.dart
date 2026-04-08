//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NodeKind {
  /// Returns a new [NodeKind] instance.
  NodeKind({
    required this.type,
  });

  NodeKindTypeEnum type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NodeKind &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode);

  @override
  String toString() => 'NodeKind[type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [NodeKind] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NodeKind? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type'), 'Required key "NodeKind[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "NodeKind[type]" has a null value in JSON.');
        return true;
      }());

      return NodeKind(
        type: NodeKindTypeEnum.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<NodeKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodeKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NodeKind> mapFromJson(dynamic json) {
    final map = <String, NodeKind>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NodeKind.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NodeKind-objects as value to a dart map
  static Map<String, List<NodeKind>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NodeKind>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NodeKind.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}


class NodeKindTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NodeKindTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const data = NodeKindTypeEnum._(r'Data');
  static const container = NodeKindTypeEnum._(r'Container');
  static const native_ = NodeKindTypeEnum._(r'Native');
  static const join = NodeKindTypeEnum._(r'Join');
  static const gather = NodeKindTypeEnum._(r'Gather');
  static const group = NodeKindTypeEnum._(r'Group');

  /// List of all possible values in this [enum][NodeKindTypeEnum].
  static const values = <NodeKindTypeEnum>[
    data,
    container,
    native_,
    join,
    gather,
    group,
  ];

  static NodeKindTypeEnum? fromJson(dynamic value) => NodeKindTypeEnumTypeTransformer().decode(value);

  static List<NodeKindTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodeKindTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeKindTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NodeKindTypeEnum] to String,
/// and [decode] dynamic data back to [NodeKindTypeEnum].
class NodeKindTypeEnumTypeTransformer {
  factory NodeKindTypeEnumTypeTransformer() => _instance ??= const NodeKindTypeEnumTypeTransformer._();

  const NodeKindTypeEnumTypeTransformer._();

  String encode(NodeKindTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NodeKindTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NodeKindTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Data': return NodeKindTypeEnum.data;
        case r'Container': return NodeKindTypeEnum.container;
        case r'Native': return NodeKindTypeEnum.native_;
        case r'Join': return NodeKindTypeEnum.join;
        case r'Gather': return NodeKindTypeEnum.gather;
        case r'Group': return NodeKindTypeEnum.group;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NodeKindTypeEnumTypeTransformer] instance.
  static NodeKindTypeEnumTypeTransformer? _instance;
}


