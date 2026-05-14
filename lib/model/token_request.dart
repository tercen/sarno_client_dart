//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenRequest {
  /// Returns a new [TokenRequest] instance.
  TokenRequest({
    required this.username,
    required this.password,
  });

  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRequest &&
    other.username == username &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'TokenRequest[username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [TokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'username'), 'Required key "TokenRequest[username]" is missing from JSON.');
        assert(json[r'username'] != null, 'Required key "TokenRequest[username]" has a null value in JSON.');
        assert(json.containsKey(r'password'), 'Required key "TokenRequest[password]" is missing from JSON.');
        assert(json[r'password'] != null, 'Required key "TokenRequest[password]" has a null value in JSON.');
        return true;
      }());

      return TokenRequest(
        username: mapValueOfType<String>(json, r'username')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<TokenRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenRequest> mapFromJson(dynamic json) {
    final map = <String, TokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenRequest-objects as value to a dart map
  static Map<String, List<TokenRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'password',
  };
}

