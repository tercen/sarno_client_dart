//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDocumentRequest {
  /// Returns a new [UpdateDocumentRequest] instance.
  UpdateDocumentRequest({
    required this.blobHash,
    required this.mimeType,
    required this.size,
  });

  String blobHash;

  String mimeType;

  int size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDocumentRequest &&
    other.blobHash == blobHash &&
    other.mimeType == mimeType &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blobHash.hashCode) +
    (mimeType.hashCode) +
    (size.hashCode);

  @override
  String toString() => 'UpdateDocumentRequest[blobHash=$blobHash, mimeType=$mimeType, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'blob_hash'] = this.blobHash;
      json[r'mime_type'] = this.mimeType;
      json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [UpdateDocumentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDocumentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'blob_hash'), 'Required key "UpdateDocumentRequest[blob_hash]" is missing from JSON.');
        assert(json[r'blob_hash'] != null, 'Required key "UpdateDocumentRequest[blob_hash]" has a null value in JSON.');
        assert(json.containsKey(r'mime_type'), 'Required key "UpdateDocumentRequest[mime_type]" is missing from JSON.');
        assert(json[r'mime_type'] != null, 'Required key "UpdateDocumentRequest[mime_type]" has a null value in JSON.');
        assert(json.containsKey(r'size'), 'Required key "UpdateDocumentRequest[size]" is missing from JSON.');
        assert(json[r'size'] != null, 'Required key "UpdateDocumentRequest[size]" has a null value in JSON.');
        return true;
      }());

      return UpdateDocumentRequest(
        blobHash: mapValueOfType<String>(json, r'blob_hash')!,
        mimeType: mapValueOfType<String>(json, r'mime_type')!,
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<UpdateDocumentRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDocumentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDocumentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDocumentRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateDocumentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDocumentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDocumentRequest-objects as value to a dart map
  static Map<String, List<UpdateDocumentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDocumentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateDocumentRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'blob_hash',
    'mime_type',
    'size',
  };
}

