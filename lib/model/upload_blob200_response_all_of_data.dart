//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UploadBlob200ResponseAllOfData {
  /// Returns a new [UploadBlob200ResponseAllOfData] instance.
  UploadBlob200ResponseAllOfData({
    required this.hash,
    this.filename,
    required this.size,
    required this.mimeType,
  });

  /// Blake3 content hash
  String hash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  int size;

  String mimeType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadBlob200ResponseAllOfData &&
    other.hash == hash &&
    other.filename == filename &&
    other.size == size &&
    other.mimeType == mimeType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hash.hashCode) +
    (filename == null ? 0 : filename!.hashCode) +
    (size.hashCode) +
    (mimeType.hashCode);

  @override
  String toString() => 'UploadBlob200ResponseAllOfData[hash=$hash, filename=$filename, size=$size, mimeType=$mimeType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hash'] = this.hash;
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
      json[r'size'] = this.size;
      json[r'mime_type'] = this.mimeType;
    return json;
  }

  /// Returns a new [UploadBlob200ResponseAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UploadBlob200ResponseAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'hash'), 'Required key "UploadBlob200ResponseAllOfData[hash]" is missing from JSON.');
        assert(json[r'hash'] != null, 'Required key "UploadBlob200ResponseAllOfData[hash]" has a null value in JSON.');
        assert(json.containsKey(r'size'), 'Required key "UploadBlob200ResponseAllOfData[size]" is missing from JSON.');
        assert(json[r'size'] != null, 'Required key "UploadBlob200ResponseAllOfData[size]" has a null value in JSON.');
        assert(json.containsKey(r'mime_type'), 'Required key "UploadBlob200ResponseAllOfData[mime_type]" is missing from JSON.');
        assert(json[r'mime_type'] != null, 'Required key "UploadBlob200ResponseAllOfData[mime_type]" has a null value in JSON.');
        return true;
      }());

      return UploadBlob200ResponseAllOfData(
        hash: mapValueOfType<String>(json, r'hash')!,
        filename: mapValueOfType<String>(json, r'filename'),
        size: mapValueOfType<int>(json, r'size')!,
        mimeType: mapValueOfType<String>(json, r'mime_type')!,
      );
    }
    return null;
  }

  static List<UploadBlob200ResponseAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UploadBlob200ResponseAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UploadBlob200ResponseAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UploadBlob200ResponseAllOfData> mapFromJson(dynamic json) {
    final map = <String, UploadBlob200ResponseAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UploadBlob200ResponseAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UploadBlob200ResponseAllOfData-objects as value to a dart map
  static Map<String, List<UploadBlob200ResponseAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UploadBlob200ResponseAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UploadBlob200ResponseAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hash',
    'size',
    'mime_type',
  };
}

