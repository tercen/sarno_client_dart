//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListOrganizations200Response {
  /// Returns a new [ListOrganizations200Response] instance.
  ListOrganizations200Response({
    required this.success,
    this.data = const [],
  });

  bool success;

  List<Organization> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOrganizations200Response &&
    other.success == success &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ListOrganizations200Response[success=$success, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [ListOrganizations200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOrganizations200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ListOrganizations200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ListOrganizations200Response[success]" has a null value in JSON.');
        return true;
      }());

      return ListOrganizations200Response(
        success: mapValueOfType<bool>(json, r'success')!,
        data: Organization.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ListOrganizations200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListOrganizations200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListOrganizations200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListOrganizations200Response> mapFromJson(dynamic json) {
    final map = <String, ListOrganizations200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOrganizations200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListOrganizations200Response-objects as value to a dart map
  static Map<String, List<ListOrganizations200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListOrganizations200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListOrganizations200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}

