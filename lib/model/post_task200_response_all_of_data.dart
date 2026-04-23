//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostTask200ResponseAllOfData {
  /// Returns a new [PostTask200ResponseAllOfData] instance.
  PostTask200ResponseAllOfData({
    required this.taskId,
  });

  int taskId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostTask200ResponseAllOfData &&
    other.taskId == taskId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskId.hashCode);

  @override
  String toString() => 'PostTask200ResponseAllOfData[taskId=$taskId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'task_id'] = this.taskId;
    return json;
  }

  /// Returns a new [PostTask200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostTask200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostTask200ResponseAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostTask200ResponseAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostTask200ResponseAllOfData(
        taskId: mapValueOfType<int>(json, r'task_id')!,
      );
    }
    return null;
  }

  static List<PostTask200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostTask200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostTask200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostTask200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, PostTask200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostTask200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostTask200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<PostTask200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostTask200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostTask200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'task_id',
  };
}

