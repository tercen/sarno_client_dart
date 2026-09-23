//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactRefRender {
  /// Returns a new [ArtifactRefRender] instance.
  ArtifactRefRender({
    required this.as_,
    this.pageSize = 50,
    this.columns = const [],
  });

  ArtifactRefRenderAs_Enum as_;

  /// Minimum value: 1
  /// Maximum value: 200
  int pageSize;

  /// Columns to show, in this order. Omit for every column. Each must exist in the table at creation time.
  List<String> columns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactRefRender &&
    other.as_ == as_ &&
    other.pageSize == pageSize &&
    _deepEquality.equals(other.columns, columns);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (as_.hashCode) +
    (pageSize.hashCode) +
    (columns.hashCode);

  @override
  String toString() => 'ArtifactRefRender[as_=$as_, pageSize=$pageSize, columns=$columns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'as'] = this.as_;
      json[r'page_size'] = this.pageSize;
      json[r'columns'] = this.columns;
    return json;
  }

  /// Returns a new [ArtifactRefRender] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactRefRender? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'as'), 'Required key "ArtifactRefRender[as]" is missing from JSON.');
        assert(json[r'as'] != null, 'Required key "ArtifactRefRender[as]" has a null value in JSON.');
        return true;
      }());

      return ArtifactRefRender(
        as_: ArtifactRefRenderAs_Enum.fromJson(json[r'as'])!,
        pageSize: mapValueOfType<int>(json, r'page_size') ?? 50,
        columns: json[r'columns'] is Iterable
            ? (json[r'columns'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ArtifactRefRender> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactRefRender>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactRefRender.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactRefRender> mapFromJson(dynamic json) {
    final map = <String, ArtifactRefRender>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactRefRender.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactRefRender-objects as value to a dart map
  static Map<String, List<ArtifactRefRender>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactRefRender>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactRefRender.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'as',
  };
}


class ArtifactRefRenderAs_Enum {
  /// Instantiate a new enum with the provided [value].
  const ArtifactRefRenderAs_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const table = ArtifactRefRenderAs_Enum._(r'table');

  /// List of all possible values in this [enum][ArtifactRefRenderAs_Enum].
  static const values = <ArtifactRefRenderAs_Enum>[
    table,
  ];

  static ArtifactRefRenderAs_Enum? fromJson(dynamic value) => ArtifactRefRenderAs_EnumTypeTransformer().decode(value);

  static List<ArtifactRefRenderAs_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactRefRenderAs_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactRefRenderAs_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ArtifactRefRenderAs_Enum] to String,
/// and [decode] dynamic data back to [ArtifactRefRenderAs_Enum].
class ArtifactRefRenderAs_EnumTypeTransformer {
  factory ArtifactRefRenderAs_EnumTypeTransformer() => _instance ??= const ArtifactRefRenderAs_EnumTypeTransformer._();

  const ArtifactRefRenderAs_EnumTypeTransformer._();

  String encode(ArtifactRefRenderAs_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ArtifactRefRenderAs_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ArtifactRefRenderAs_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'table': return ArtifactRefRenderAs_Enum.table;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ArtifactRefRenderAs_EnumTypeTransformer] instance.
  static ArtifactRefRenderAs_EnumTypeTransformer? _instance;
}


