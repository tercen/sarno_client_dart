//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskInfo {
  /// Returns a new [TaskInfo] instance.
  TaskInfo({
    required this.taskId,
    required this.state,
    this.image,
    this.requester,
    this.worker,
    this.resultManifest,
    this.error,
    this.durationMs,
    this.costTokens,
  });

  int taskId;

  TaskState state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requester;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? worker;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resultManifest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationMs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskInfo &&
    other.taskId == taskId &&
    other.state == state &&
    other.image == image &&
    other.requester == requester &&
    other.worker == worker &&
    other.resultManifest == resultManifest &&
    other.error == error &&
    other.durationMs == durationMs &&
    other.costTokens == costTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskId.hashCode) +
    (state.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (requester == null ? 0 : requester!.hashCode) +
    (worker == null ? 0 : worker!.hashCode) +
    (resultManifest == null ? 0 : resultManifest!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (durationMs == null ? 0 : durationMs!.hashCode) +
    (costTokens == null ? 0 : costTokens!.hashCode);

  @override
  String toString() => 'TaskInfo[taskId=$taskId, state=$state, image=$image, requester=$requester, worker=$worker, resultManifest=$resultManifest, error=$error, durationMs=$durationMs, costTokens=$costTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'task_id'] = this.taskId;
      json[r'state'] = this.state;
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.requester != null) {
      json[r'requester'] = this.requester;
    } else {
      json[r'requester'] = null;
    }
    if (this.worker != null) {
      json[r'worker'] = this.worker;
    } else {
      json[r'worker'] = null;
    }
    if (this.resultManifest != null) {
      json[r'result_manifest'] = this.resultManifest;
    } else {
      json[r'result_manifest'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.durationMs != null) {
      json[r'duration_ms'] = this.durationMs;
    } else {
      json[r'duration_ms'] = null;
    }
    if (this.costTokens != null) {
      json[r'cost_tokens'] = this.costTokens;
    } else {
      json[r'cost_tokens'] = null;
    }
    return json;
  }

  /// Returns a new [TaskInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'task_id'), 'Required key "TaskInfo[task_id]" is missing from JSON.');
        assert(json[r'task_id'] != null, 'Required key "TaskInfo[task_id]" has a null value in JSON.');
        assert(json.containsKey(r'state'), 'Required key "TaskInfo[state]" is missing from JSON.');
        assert(json[r'state'] != null, 'Required key "TaskInfo[state]" has a null value in JSON.');
        return true;
      }());

      return TaskInfo(
        taskId: mapValueOfType<int>(json, r'task_id')!,
        state: TaskState.fromJson(json[r'state'])!,
        image: mapValueOfType<String>(json, r'image'),
        requester: mapValueOfType<String>(json, r'requester'),
        worker: mapValueOfType<String>(json, r'worker'),
        resultManifest: mapValueOfType<String>(json, r'result_manifest'),
        error: mapValueOfType<String>(json, r'error'),
        durationMs: mapValueOfType<int>(json, r'duration_ms'),
        costTokens: mapValueOfType<int>(json, r'cost_tokens'),
      );
    }
    return null;
  }

  static List<TaskInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskInfo> mapFromJson(dynamic json) {
    final map = <String, TaskInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskInfo-objects as value to a dart map
  static Map<String, List<TaskInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'task_id',
    'state',
  };
}

