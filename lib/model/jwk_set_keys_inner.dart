//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JwkSetKeysInner {
  /// Returns a new [JwkSetKeysInner] instance.
  JwkSetKeysInner({
    required this.kty,
    required this.crv,
    this.use,
    this.kid,
    required this.x,
  });

  String kty;

  String crv;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? use;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kid;

  String x;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JwkSetKeysInner &&
    other.kty == kty &&
    other.crv == crv &&
    other.use == use &&
    other.kid == kid &&
    other.x == x;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kty.hashCode) +
    (crv.hashCode) +
    (use == null ? 0 : use!.hashCode) +
    (kid == null ? 0 : kid!.hashCode) +
    (x.hashCode);

  @override
  String toString() => 'JwkSetKeysInner[kty=$kty, crv=$crv, use=$use, kid=$kid, x=$x]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kty'] = this.kty;
      json[r'crv'] = this.crv;
    if (this.use != null) {
      json[r'use'] = this.use;
    } else {
      json[r'use'] = null;
    }
    if (this.kid != null) {
      json[r'kid'] = this.kid;
    } else {
      json[r'kid'] = null;
    }
      json[r'x'] = this.x;
    return json;
  }

  /// Returns a new [JwkSetKeysInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JwkSetKeysInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'kty'), 'Required key "JwkSetKeysInner[kty]" is missing from JSON.');
        assert(json[r'kty'] != null, 'Required key "JwkSetKeysInner[kty]" has a null value in JSON.');
        assert(json.containsKey(r'crv'), 'Required key "JwkSetKeysInner[crv]" is missing from JSON.');
        assert(json[r'crv'] != null, 'Required key "JwkSetKeysInner[crv]" has a null value in JSON.');
        assert(json.containsKey(r'x'), 'Required key "JwkSetKeysInner[x]" is missing from JSON.');
        assert(json[r'x'] != null, 'Required key "JwkSetKeysInner[x]" has a null value in JSON.');
        return true;
      }());

      return JwkSetKeysInner(
        kty: mapValueOfType<String>(json, r'kty')!,
        crv: mapValueOfType<String>(json, r'crv')!,
        use: mapValueOfType<String>(json, r'use'),
        kid: mapValueOfType<String>(json, r'kid'),
        x: mapValueOfType<String>(json, r'x')!,
      );
    }
    return null;
  }

  static List<JwkSetKeysInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JwkSetKeysInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JwkSetKeysInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JwkSetKeysInner> mapFromJson(dynamic json) {
    final map = <String, JwkSetKeysInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JwkSetKeysInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JwkSetKeysInner-objects as value to a dart map
  static Map<String, List<JwkSetKeysInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JwkSetKeysInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JwkSetKeysInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kty',
    'crv',
    'x',
  };
}

