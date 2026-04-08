//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListOrgMembers200Response {
  /// Returns a new [ListOrgMembers200Response] instance.
  ListOrgMembers200Response({
    required this.success,
    this.data = const [],
  });

  ListOrgMembers200ResponseSuccessEnum success;

  List<OrgMember> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOrgMembers200Response &&
    other.success == success &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ListOrgMembers200Response[success=$success, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ListOrgMembers200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOrgMembers200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ListOrgMembers200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ListOrgMembers200Response[success]" has a null value in JSON.');
        return true;
      }());

      return ListOrgMembers200Response(
        success: ListOrgMembers200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: OrgMember.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ListOrgMembers200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListOrgMembers200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListOrgMembers200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListOrgMembers200Response> mapFromJson(dynamic json) {
    final map = <String, ListOrgMembers200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOrgMembers200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListOrgMembers200Response-objects as value to a dart map
  static Map<String, List<ListOrgMembers200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListOrgMembers200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListOrgMembers200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class ListOrgMembers200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const ListOrgMembers200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = ListOrgMembers200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][ListOrgMembers200ResponseSuccessEnum].
  static const values = <ListOrgMembers200ResponseSuccessEnum>[
    true_,
  ];

  static ListOrgMembers200ResponseSuccessEnum? fromJson(dynamic value) => ListOrgMembers200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<ListOrgMembers200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListOrgMembers200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListOrgMembers200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ListOrgMembers200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [ListOrgMembers200ResponseSuccessEnum].
class ListOrgMembers200ResponseSuccessEnumTypeTransformer {
  factory ListOrgMembers200ResponseSuccessEnumTypeTransformer() => _instance ??= const ListOrgMembers200ResponseSuccessEnumTypeTransformer._();

  const ListOrgMembers200ResponseSuccessEnumTypeTransformer._();

  bool encode(ListOrgMembers200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListOrgMembers200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListOrgMembers200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return ListOrgMembers200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListOrgMembers200ResponseSuccessEnumTypeTransformer] instance.
  static ListOrgMembers200ResponseSuccessEnumTypeTransformer? _instance;
}


