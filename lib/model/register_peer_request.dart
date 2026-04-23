//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegisterPeerRequest {
  /// Returns a new [RegisterPeerRequest] instance.
  RegisterPeerRequest({
    required this.endpointId,
    this.relayUrl,
    this.directAddrs = const [],
  });

  String endpointId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relayUrl;

  List<String> directAddrs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterPeerRequest &&
    other.endpointId == endpointId &&
    other.relayUrl == relayUrl &&
    _deepEquality.equals(other.directAddrs, directAddrs);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endpointId.hashCode) +
    (relayUrl == null ? 0 : relayUrl!.hashCode) +
    (directAddrs.hashCode);

  @override
  String toString() => 'RegisterPeerRequest[endpointId=$endpointId, relayUrl=$relayUrl, directAddrs=$directAddrs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'endpoint_id'] = this.endpointId;
    if (this.relayUrl != null) {
      json[r'relay_url'] = this.relayUrl;
    } else {
      json[r'relay_url'] = null;
    }
      json[r'direct_addrs'] = this.directAddrs;
    return json;
  }

  /// Returns a new [RegisterPeerRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterPeerRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegisterPeerRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegisterPeerRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegisterPeerRequest(
        endpointId: mapValueOfType<String>(json, r'endpoint_id')!,
        relayUrl: mapValueOfType<String>(json, r'relay_url'),
        directAddrs: json[r'direct_addrs'] is Iterable
            ? (json[r'direct_addrs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<RegisterPeerRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterPeerRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterPeerRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterPeerRequest> mapFromJson(dynamic json) {
    final map = <String, RegisterPeerRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterPeerRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterPeerRequest-objects as value to a dart map
  static Map<String, List<RegisterPeerRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterPeerRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterPeerRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'endpoint_id',
  };
}

