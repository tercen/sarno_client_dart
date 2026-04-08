//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListTeamMembers200Response {
  /// Returns a new [ListTeamMembers200Response] instance.
  ListTeamMembers200Response({
    required this.success,
    this.data = const [],
  });

  ListTeamMembers200ResponseSuccessEnum success;

  List<TeamMember> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListTeamMembers200Response &&
    other.success == success &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ListTeamMembers200Response[success=$success, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ListTeamMembers200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListTeamMembers200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ListTeamMembers200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ListTeamMembers200Response[success]" has a null value in JSON.');
        return true;
      }());

      return ListTeamMembers200Response(
        success: ListTeamMembers200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: TeamMember.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ListTeamMembers200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListTeamMembers200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListTeamMembers200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListTeamMembers200Response> mapFromJson(dynamic json) {
    final map = <String, ListTeamMembers200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListTeamMembers200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListTeamMembers200Response-objects as value to a dart map
  static Map<String, List<ListTeamMembers200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListTeamMembers200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListTeamMembers200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class ListTeamMembers200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const ListTeamMembers200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = ListTeamMembers200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][ListTeamMembers200ResponseSuccessEnum].
  static const values = <ListTeamMembers200ResponseSuccessEnum>[
    true_,
  ];

  static ListTeamMembers200ResponseSuccessEnum? fromJson(dynamic value) => ListTeamMembers200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<ListTeamMembers200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListTeamMembers200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListTeamMembers200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ListTeamMembers200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [ListTeamMembers200ResponseSuccessEnum].
class ListTeamMembers200ResponseSuccessEnumTypeTransformer {
  factory ListTeamMembers200ResponseSuccessEnumTypeTransformer() => _instance ??= const ListTeamMembers200ResponseSuccessEnumTypeTransformer._();

  const ListTeamMembers200ResponseSuccessEnumTypeTransformer._();

  bool encode(ListTeamMembers200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListTeamMembers200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListTeamMembers200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return ListTeamMembers200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListTeamMembers200ResponseSuccessEnumTypeTransformer] instance.
  static ListTeamMembers200ResponseSuccessEnumTypeTransformer? _instance;
}


