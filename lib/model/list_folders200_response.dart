//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListFolders200Response {
  /// Returns a new [ListFolders200Response] instance.
  ListFolders200Response({
    required this.success,
    this.data = const [],
  });

  ListFolders200ResponseSuccessEnum success;

  List<Folder> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListFolders200Response &&
    other.success == success &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ListFolders200Response[success=$success, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ListFolders200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListFolders200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ListFolders200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ListFolders200Response[success]" has a null value in JSON.');
        return true;
      }());

      return ListFolders200Response(
        success: ListFolders200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: Folder.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ListFolders200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListFolders200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListFolders200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListFolders200Response> mapFromJson(dynamic json) {
    final map = <String, ListFolders200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListFolders200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListFolders200Response-objects as value to a dart map
  static Map<String, List<ListFolders200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListFolders200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListFolders200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class ListFolders200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const ListFolders200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = ListFolders200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][ListFolders200ResponseSuccessEnum].
  static const values = <ListFolders200ResponseSuccessEnum>[
    true_,
  ];

  static ListFolders200ResponseSuccessEnum? fromJson(dynamic value) => ListFolders200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<ListFolders200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListFolders200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListFolders200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ListFolders200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [ListFolders200ResponseSuccessEnum].
class ListFolders200ResponseSuccessEnumTypeTransformer {
  factory ListFolders200ResponseSuccessEnumTypeTransformer() => _instance ??= const ListFolders200ResponseSuccessEnumTypeTransformer._();

  const ListFolders200ResponseSuccessEnumTypeTransformer._();

  bool encode(ListFolders200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListFolders200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListFolders200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return ListFolders200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListFolders200ResponseSuccessEnumTypeTransformer] instance.
  static ListFolders200ResponseSuccessEnumTypeTransformer? _instance;
}


