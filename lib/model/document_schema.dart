//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DocumentSchema {
  /// Returns a new [DocumentSchema] instance.
  DocumentSchema({
    required this.documentId,
    required this.name,
    required this.blobHash,
    required this.nRowsTotal,
    this.columns = const [],
  });

  String documentId;

  String name;

  String blobHash;

  /// Total rows in the table (from parquet footer)
  int nRowsTotal;

  /// Schema in column order
  List<DocumentPeekColumnsInner> columns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocumentSchema &&
    other.documentId == documentId &&
    other.name == name &&
    other.blobHash == blobHash &&
    other.nRowsTotal == nRowsTotal &&
    _deepEquality.equals(other.columns, columns);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (documentId.hashCode) +
    (name.hashCode) +
    (blobHash.hashCode) +
    (nRowsTotal.hashCode) +
    (columns.hashCode);

  @override
  String toString() => 'DocumentSchema[documentId=$documentId, name=$name, blobHash=$blobHash, nRowsTotal=$nRowsTotal, columns=$columns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'document_id'] = this.documentId;
      json[r'name'] = this.name;
      json[r'blob_hash'] = this.blobHash;
      json[r'n_rows_total'] = this.nRowsTotal;
      json[r'columns'] = this.columns;
    return json;
  }

  /// Returns a new [DocumentSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'document_id'), 'Required key "DocumentSchema[document_id]" is missing from JSON.');
        assert(json[r'document_id'] != null, 'Required key "DocumentSchema[document_id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "DocumentSchema[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "DocumentSchema[name]" has a null value in JSON.');
        assert(json.containsKey(r'blob_hash'), 'Required key "DocumentSchema[blob_hash]" is missing from JSON.');
        assert(json[r'blob_hash'] != null, 'Required key "DocumentSchema[blob_hash]" has a null value in JSON.');
        assert(json.containsKey(r'n_rows_total'), 'Required key "DocumentSchema[n_rows_total]" is missing from JSON.');
        assert(json[r'n_rows_total'] != null, 'Required key "DocumentSchema[n_rows_total]" has a null value in JSON.');
        assert(json.containsKey(r'columns'), 'Required key "DocumentSchema[columns]" is missing from JSON.');
        assert(json[r'columns'] != null, 'Required key "DocumentSchema[columns]" has a null value in JSON.');
        return true;
      }());

      return DocumentSchema(
        documentId: mapValueOfType<String>(json, r'document_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        blobHash: mapValueOfType<String>(json, r'blob_hash')!,
        nRowsTotal: mapValueOfType<int>(json, r'n_rows_total')!,
        columns: DocumentPeekColumnsInner.listFromJson(json[r'columns']),
      );
    }
    return null;
  }

  static List<DocumentSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocumentSchema> mapFromJson(dynamic json) {
    final map = <String, DocumentSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocumentSchema-objects as value to a dart map
  static Map<String, List<DocumentSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocumentSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocumentSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'document_id',
    'name',
    'blob_hash',
    'n_rows_total',
    'columns',
  };
}

