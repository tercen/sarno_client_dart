//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListTeams200Response {
  /// Returns a new [ListTeams200Response] instance.
  ListTeams200Response({
    required this.success,
    this.data = const [],
  });

  ListTeams200ResponseSuccessEnum success;

  List<Team> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListTeams200Response &&
    other.success == success &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ListTeams200Response[success=$success, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ListTeams200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListTeams200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ListTeams200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ListTeams200Response[success]" has a null value in JSON.');
        return true;
      }());

      return ListTeams200Response(
        success: ListTeams200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: Team.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ListTeams200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListTeams200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListTeams200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListTeams200Response> mapFromJson(dynamic json) {
    final map = <String, ListTeams200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListTeams200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListTeams200Response-objects as value to a dart map
  static Map<String, List<ListTeams200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListTeams200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListTeams200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class ListTeams200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const ListTeams200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = ListTeams200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][ListTeams200ResponseSuccessEnum].
  static const values = <ListTeams200ResponseSuccessEnum>[
    true_,
  ];

  static ListTeams200ResponseSuccessEnum? fromJson(dynamic value) => ListTeams200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<ListTeams200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListTeams200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListTeams200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ListTeams200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [ListTeams200ResponseSuccessEnum].
class ListTeams200ResponseSuccessEnumTypeTransformer {
  factory ListTeams200ResponseSuccessEnumTypeTransformer() => _instance ??= const ListTeams200ResponseSuccessEnumTypeTransformer._();

  const ListTeams200ResponseSuccessEnumTypeTransformer._();

  bool encode(ListTeams200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListTeams200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListTeams200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return ListTeams200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListTeams200ResponseSuccessEnumTypeTransformer] instance.
  static ListTeams200ResponseSuccessEnumTypeTransformer? _instance;
}


