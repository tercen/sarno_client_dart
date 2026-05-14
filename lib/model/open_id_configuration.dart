//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OpenIdConfiguration {
  /// Returns a new [OpenIdConfiguration] instance.
  OpenIdConfiguration({
    required this.issuer,
    this.authorizationEndpoint,
    required this.tokenEndpoint,
    this.userinfoEndpoint,
    required this.jwksUri,
    this.responseTypesSupported = const [],
    this.subjectTypesSupported = const [],
    this.idTokenSigningAlgValuesSupported = const [],
    this.grantTypesSupported = const [],
    this.tokenEndpointAuthMethodsSupported = const [],
  });

  String issuer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorizationEndpoint;

  String tokenEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userinfoEndpoint;

  String jwksUri;

  List<String> responseTypesSupported;

  List<String> subjectTypesSupported;

  List<String> idTokenSigningAlgValuesSupported;

  List<String> grantTypesSupported;

  List<String> tokenEndpointAuthMethodsSupported;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenIdConfiguration &&
    other.issuer == issuer &&
    other.authorizationEndpoint == authorizationEndpoint &&
    other.tokenEndpoint == tokenEndpoint &&
    other.userinfoEndpoint == userinfoEndpoint &&
    other.jwksUri == jwksUri &&
    _deepEquality.equals(other.responseTypesSupported, responseTypesSupported) &&
    _deepEquality.equals(other.subjectTypesSupported, subjectTypesSupported) &&
    _deepEquality.equals(other.idTokenSigningAlgValuesSupported, idTokenSigningAlgValuesSupported) &&
    _deepEquality.equals(other.grantTypesSupported, grantTypesSupported) &&
    _deepEquality.equals(other.tokenEndpointAuthMethodsSupported, tokenEndpointAuthMethodsSupported);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (issuer.hashCode) +
    (authorizationEndpoint == null ? 0 : authorizationEndpoint!.hashCode) +
    (tokenEndpoint.hashCode) +
    (userinfoEndpoint == null ? 0 : userinfoEndpoint!.hashCode) +
    (jwksUri.hashCode) +
    (responseTypesSupported.hashCode) +
    (subjectTypesSupported.hashCode) +
    (idTokenSigningAlgValuesSupported.hashCode) +
    (grantTypesSupported.hashCode) +
    (tokenEndpointAuthMethodsSupported.hashCode);

  @override
  String toString() => 'OpenIdConfiguration[issuer=$issuer, authorizationEndpoint=$authorizationEndpoint, tokenEndpoint=$tokenEndpoint, userinfoEndpoint=$userinfoEndpoint, jwksUri=$jwksUri, responseTypesSupported=$responseTypesSupported, subjectTypesSupported=$subjectTypesSupported, idTokenSigningAlgValuesSupported=$idTokenSigningAlgValuesSupported, grantTypesSupported=$grantTypesSupported, tokenEndpointAuthMethodsSupported=$tokenEndpointAuthMethodsSupported]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'issuer'] = this.issuer;
    if (this.authorizationEndpoint != null) {
      json[r'authorization_endpoint'] = this.authorizationEndpoint;
    } else {
      json[r'authorization_endpoint'] = null;
    }
      json[r'token_endpoint'] = this.tokenEndpoint;
    if (this.userinfoEndpoint != null) {
      json[r'userinfo_endpoint'] = this.userinfoEndpoint;
    } else {
      json[r'userinfo_endpoint'] = null;
    }
      json[r'jwks_uri'] = this.jwksUri;
      json[r'response_types_supported'] = this.responseTypesSupported;
      json[r'subject_types_supported'] = this.subjectTypesSupported;
      json[r'id_token_signing_alg_values_supported'] = this.idTokenSigningAlgValuesSupported;
      json[r'grant_types_supported'] = this.grantTypesSupported;
      json[r'token_endpoint_auth_methods_supported'] = this.tokenEndpointAuthMethodsSupported;
    return json;
  }

  /// Returns a new [OpenIdConfiguration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenIdConfiguration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'issuer'), 'Required key "OpenIdConfiguration[issuer]" is missing from JSON.');
        assert(json[r'issuer'] != null, 'Required key "OpenIdConfiguration[issuer]" has a null value in JSON.');
        assert(json.containsKey(r'token_endpoint'), 'Required key "OpenIdConfiguration[token_endpoint]" is missing from JSON.');
        assert(json[r'token_endpoint'] != null, 'Required key "OpenIdConfiguration[token_endpoint]" has a null value in JSON.');
        assert(json.containsKey(r'jwks_uri'), 'Required key "OpenIdConfiguration[jwks_uri]" is missing from JSON.');
        assert(json[r'jwks_uri'] != null, 'Required key "OpenIdConfiguration[jwks_uri]" has a null value in JSON.');
        return true;
      }());

      return OpenIdConfiguration(
        issuer: mapValueOfType<String>(json, r'issuer')!,
        authorizationEndpoint: mapValueOfType<String>(json, r'authorization_endpoint'),
        tokenEndpoint: mapValueOfType<String>(json, r'token_endpoint')!,
        userinfoEndpoint: mapValueOfType<String>(json, r'userinfo_endpoint'),
        jwksUri: mapValueOfType<String>(json, r'jwks_uri')!,
        responseTypesSupported: json[r'response_types_supported'] is Iterable
            ? (json[r'response_types_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        subjectTypesSupported: json[r'subject_types_supported'] is Iterable
            ? (json[r'subject_types_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        idTokenSigningAlgValuesSupported: json[r'id_token_signing_alg_values_supported'] is Iterable
            ? (json[r'id_token_signing_alg_values_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        grantTypesSupported: json[r'grant_types_supported'] is Iterable
            ? (json[r'grant_types_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tokenEndpointAuthMethodsSupported: json[r'token_endpoint_auth_methods_supported'] is Iterable
            ? (json[r'token_endpoint_auth_methods_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OpenIdConfiguration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenIdConfiguration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenIdConfiguration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenIdConfiguration> mapFromJson(dynamic json) {
    final map = <String, OpenIdConfiguration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenIdConfiguration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenIdConfiguration-objects as value to a dart map
  static Map<String, List<OpenIdConfiguration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenIdConfiguration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenIdConfiguration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'issuer',
    'token_endpoint',
    'jwks_uri',
  };
}

