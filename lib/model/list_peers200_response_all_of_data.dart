//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListPeers200ResponseAllOfData {
  /// Returns a new [ListPeers200ResponseAllOfData] instance.
  ListPeers200ResponseAllOfData({
    this.peers = const [],
  });

  List<Peer> peers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListPeers200ResponseAllOfData &&
    _deepEquality.equals(other.peers, peers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (peers.hashCode);

  @override
  String toString() => 'ListPeers200ResponseAllOfData[peers=$peers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'peers'] = this.peers;
    return json;
  }

  /// Returns a new [ListPeers200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListPeers200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'peers'), 'Required key "ListPeers200ResponseAllOfData[peers]" is missing from JSON.');
        assert(json[r'peers'] != null, 'Required key "ListPeers200ResponseAllOfData[peers]" has a null value in JSON.');
        return true;
      }());

      return ListPeers200ResponseAllOfData(
        peers: Peer.listFromJson(json[r'peers']),
      );
    }
    return null;
  }

  static List<ListPeers200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListPeers200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListPeers200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListPeers200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, ListPeers200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListPeers200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListPeers200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<ListPeers200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListPeers200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListPeers200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'peers',
  };
}

