//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Document {
  /// Returns a new [Document] instance.
  Document({
    required this.id,
    required this.projectId,
    this.folderId,
    required this.name,
    required this.blobHash,
    required this.mimeType,
    required this.size,
    required this.uploadedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String projectId;

  /// Null for project root
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? folderId;

  String name;

  /// Blake3 content hash
  String blobHash;

  /// MIME type (e.g. text/csv, image/png, application/json)
  String mimeType;

  int size;

  String uploadedBy;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Document &&
    other.id == id &&
    other.projectId == projectId &&
    other.folderId == folderId &&
    other.name == name &&
    other.blobHash == blobHash &&
    other.mimeType == mimeType &&
    other.size == size &&
    other.uploadedBy == uploadedBy &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (projectId.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode) +
    (name.hashCode) +
    (blobHash.hashCode) +
    (mimeType.hashCode) +
    (size.hashCode) +
    (uploadedBy.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Document[id=$id, projectId=$projectId, folderId=$folderId, name=$name, blobHash=$blobHash, mimeType=$mimeType, size=$size, uploadedBy=$uploadedBy, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'project_id'] = this.projectId;
    if (this.folderId != null) {
      json[r'folder_id'] = this.folderId;
    } else {
      json[r'folder_id'] = null;
    }
      json[r'name'] = this.name;
      json[r'blob_hash'] = this.blobHash;
      json[r'mime_type'] = this.mimeType;
      json[r'size'] = this.size;
      json[r'uploaded_by'] = this.uploadedBy;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Document] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Document? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Document[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Document[id]" has a null value in JSON.');
        assert(json.containsKey(r'project_id'), 'Required key "Document[project_id]" is missing from JSON.');
        assert(json[r'project_id'] != null, 'Required key "Document[project_id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Document[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Document[name]" has a null value in JSON.');
        assert(json.containsKey(r'blob_hash'), 'Required key "Document[blob_hash]" is missing from JSON.');
        assert(json[r'blob_hash'] != null, 'Required key "Document[blob_hash]" has a null value in JSON.');
        assert(json.containsKey(r'mime_type'), 'Required key "Document[mime_type]" is missing from JSON.');
        assert(json[r'mime_type'] != null, 'Required key "Document[mime_type]" has a null value in JSON.');
        assert(json.containsKey(r'size'), 'Required key "Document[size]" is missing from JSON.');
        assert(json[r'size'] != null, 'Required key "Document[size]" has a null value in JSON.');
        assert(json.containsKey(r'uploaded_by'), 'Required key "Document[uploaded_by]" is missing from JSON.');
        assert(json[r'uploaded_by'] != null, 'Required key "Document[uploaded_by]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "Document[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "Document[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "Document[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "Document[updated_at]" has a null value in JSON.');
        return true;
      }());

      return Document(
        id: mapValueOfType<String>(json, r'id')!,
        projectId: mapValueOfType<String>(json, r'project_id')!,
        folderId: mapValueOfType<String>(json, r'folder_id'),
        name: mapValueOfType<String>(json, r'name')!,
        blobHash: mapValueOfType<String>(json, r'blob_hash')!,
        mimeType: mapValueOfType<String>(json, r'mime_type')!,
        size: mapValueOfType<int>(json, r'size')!,
        uploadedBy: mapValueOfType<String>(json, r'uploaded_by')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Document> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Document>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Document.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Document> mapFromJson(dynamic json) {
    final map = <String, Document>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Document.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Document-objects as value to a dart map
  static Map<String, List<Document>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Document>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Document.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'project_id',
    'name',
    'blob_hash',
    'mime_type',
    'size',
    'uploaded_by',
    'created_at',
    'updated_at',
  };
}

