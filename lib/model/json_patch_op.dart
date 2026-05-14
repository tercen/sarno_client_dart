//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JsonPatchOp {
  /// Returns a new [JsonPatchOp] instance.
  JsonPatchOp({
    required this.op,
    required this.path,
    this.value,
    this.from,
  });

  JsonPatchOpOpEnum op;

  String path;

  Object? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JsonPatchOp &&
    other.op == op &&
    other.path == path &&
    other.value == value &&
    other.from == from;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (op.hashCode) +
    (path.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (from == null ? 0 : from!.hashCode);

  @override
  String toString() => 'JsonPatchOp[op=$op, path=$path, value=$value, from=$from]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'op'] = this.op;
      json[r'path'] = this.path;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    return json;
  }

  /// Returns a new [JsonPatchOp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JsonPatchOp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'op'), 'Required key "JsonPatchOp[op]" is missing from JSON.');
        assert(json[r'op'] != null, 'Required key "JsonPatchOp[op]" has a null value in JSON.');
        assert(json.containsKey(r'path'), 'Required key "JsonPatchOp[path]" is missing from JSON.');
        assert(json[r'path'] != null, 'Required key "JsonPatchOp[path]" has a null value in JSON.');
        return true;
      }());

      return JsonPatchOp(
        op: JsonPatchOpOpEnum.fromJson(json[r'op'])!,
        path: mapValueOfType<String>(json, r'path')!,
        value: mapValueOfType<Object>(json, r'value'),
        from: mapValueOfType<String>(json, r'from'),
      );
    }
    return null;
  }

  static List<JsonPatchOp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JsonPatchOp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JsonPatchOp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JsonPatchOp> mapFromJson(dynamic json) {
    final map = <String, JsonPatchOp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JsonPatchOp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JsonPatchOp-objects as value to a dart map
  static Map<String, List<JsonPatchOp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JsonPatchOp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JsonPatchOp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'op',
    'path',
  };
}


class JsonPatchOpOpEnum {
  /// Instantiate a new enum with the provided [value].
  const JsonPatchOpOpEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const add = JsonPatchOpOpEnum._(r'add');
  static const remove = JsonPatchOpOpEnum._(r'remove');
  static const replace = JsonPatchOpOpEnum._(r'replace');
  static const move = JsonPatchOpOpEnum._(r'move');
  static const copy = JsonPatchOpOpEnum._(r'copy');
  static const test = JsonPatchOpOpEnum._(r'test');

  /// List of all possible values in this [enum][JsonPatchOpOpEnum].
  static const values = <JsonPatchOpOpEnum>[
    add,
    remove,
    replace,
    move,
    copy,
    test,
  ];

  static JsonPatchOpOpEnum? fromJson(dynamic value) => JsonPatchOpOpEnumTypeTransformer().decode(value);

  static List<JsonPatchOpOpEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JsonPatchOpOpEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JsonPatchOpOpEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [JsonPatchOpOpEnum] to String,
/// and [decode] dynamic data back to [JsonPatchOpOpEnum].
class JsonPatchOpOpEnumTypeTransformer {
  factory JsonPatchOpOpEnumTypeTransformer() => _instance ??= const JsonPatchOpOpEnumTypeTransformer._();

  const JsonPatchOpOpEnumTypeTransformer._();

  String encode(JsonPatchOpOpEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a JsonPatchOpOpEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  JsonPatchOpOpEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'add': return JsonPatchOpOpEnum.add;
        case r'remove': return JsonPatchOpOpEnum.remove;
        case r'replace': return JsonPatchOpOpEnum.replace;
        case r'move': return JsonPatchOpOpEnum.move;
        case r'copy': return JsonPatchOpOpEnum.copy;
        case r'test': return JsonPatchOpOpEnum.test;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [JsonPatchOpOpEnumTypeTransformer] instance.
  static JsonPatchOpOpEnumTypeTransformer? _instance;
}


