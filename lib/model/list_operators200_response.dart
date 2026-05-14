//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListOperators200Response {
  /// Returns a new [ListOperators200Response] instance.
  ListOperators200Response({
    required this.success,
    this.data,
  });

  bool success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ListOperators200ResponseAllOfData? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOperators200Response &&
    other.success == success &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'ListOperators200Response[success=$success, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    return json;
  }

  /// Returns a new [ListOperators200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOperators200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ListOperators200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ListOperators200Response[success]" has a null value in JSON.');
        return true;
      }());

      return ListOperators200Response(
        success: mapValueOfType<bool>(json, r'success')!,
        data: ListOperators200ResponseAllOfData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<ListOperators200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListOperators200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListOperators200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListOperators200Response> mapFromJson(dynamic json) {
    final map = <String, ListOperators200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOperators200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListOperators200Response-objects as value to a dart map
  static Map<String, List<ListOperators200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListOperators200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListOperators200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}

