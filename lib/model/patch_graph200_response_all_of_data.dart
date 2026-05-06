//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchGraph200ResponseAllOfData {
  /// Returns a new [PatchGraph200ResponseAllOfData] instance.
  PatchGraph200ResponseAllOfData({
    required this.revision,
  });

  int revision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchGraph200ResponseAllOfData &&
    other.revision == revision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (revision.hashCode);

  @override
  String toString() => 'PatchGraph200ResponseAllOfData[revision=$revision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'revision'] = this.revision;
    return json;
  }

  /// Returns a new [PatchGraph200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchGraph200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchGraph200ResponseAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchGraph200ResponseAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchGraph200ResponseAllOfData(
        revision: mapValueOfType<int>(json, r'revision')!,
      );
    }
    return null;
  }

  static List<PatchGraph200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchGraph200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchGraph200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchGraph200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, PatchGraph200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchGraph200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchGraph200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<PatchGraph200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchGraph200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchGraph200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'revision',
  };
}

