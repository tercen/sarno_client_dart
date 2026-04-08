//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteOrganization200ResponseAllOfData {
  /// Returns a new [DeleteOrganization200ResponseAllOfData] instance.
  DeleteOrganization200ResponseAllOfData({
    required this.deleted,
  });

  String deleted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteOrganization200ResponseAllOfData &&
    other.deleted == deleted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deleted.hashCode);

  @override
  String toString() => 'DeleteOrganization200ResponseAllOfData[deleted=$deleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deleted'] = this.deleted;
    return json;
  }

  /// Returns a new [DeleteOrganization200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteOrganization200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'deleted'), 'Required key "DeleteOrganization200ResponseAllOfData[deleted]" is missing from JSON.');
        assert(json[r'deleted'] != null, 'Required key "DeleteOrganization200ResponseAllOfData[deleted]" has a null value in JSON.');
        return true;
      }());

      return DeleteOrganization200ResponseAllOfData(
        deleted: mapValueOfType<String>(json, r'deleted')!,
      );
    }
    return null;
  }

  static List<DeleteOrganization200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteOrganization200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteOrganization200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteOrganization200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, DeleteOrganization200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteOrganization200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteOrganization200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<DeleteOrganization200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteOrganization200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteOrganization200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deleted',
  };
}

