//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CancelTask200Response {
  /// Returns a new [CancelTask200Response] instance.
  CancelTask200Response({
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
  CancelTask200ResponseAllOfData? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CancelTask200Response &&
    other.success == success &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'CancelTask200Response[success=$success, data=$data]';

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

  /// Returns a new [CancelTask200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CancelTask200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "CancelTask200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "CancelTask200Response[success]" has a null value in JSON.');
        return true;
      }());

      return CancelTask200Response(
        success: mapValueOfType<bool>(json, r'success')!,
        data: CancelTask200ResponseAllOfData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<CancelTask200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CancelTask200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CancelTask200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CancelTask200Response> mapFromJson(dynamic json) {
    final map = <String, CancelTask200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CancelTask200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CancelTask200Response-objects as value to a dart map
  static Map<String, List<CancelTask200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CancelTask200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CancelTask200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}

