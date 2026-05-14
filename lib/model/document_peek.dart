//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DocumentPeek {
  /// Returns a new [DocumentPeek] instance.
  DocumentPeek({
    required this.documentId,
    required this.name,
    required this.blobHash,
    required this.nRowsTotal,
    required this.nRowsReturned,
    this.columns = const [],
    this.data = const {},
  });

  String documentId;

  /// Document display name
  String name;

  /// Internal blob hash for diagnostics
  String blobHash;

  /// Total rows in the table
  int nRowsTotal;

  /// Rows actually returned (≤ max_rows)
  int nRowsReturned;

  /// Schema in column order
  List<DocumentPeekColumnsInner> columns;

  /// Column-oriented data: each key is a column name, value is an array of cell values. Numeric columns are JSON numbers, string columns are JSON strings.
  Map<String, List<Object>> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocumentPeek &&
    other.documentId == documentId &&
    other.name == name &&
    other.blobHash == blobHash &&
    other.nRowsTotal == nRowsTotal &&
    other.nRowsReturned == nRowsReturned &&
    _deepEquality.equals(other.columns, columns) &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (documentId.hashCode) +
    (name.hashCode) +
    (blobHash.hashCode) +
    (nRowsTotal.hashCode) +
    (nRowsReturned.hashCode) +
    (columns.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'DocumentPeek[documentId=$documentId, name=$name, blobHash=$blobHash, nRowsTotal=$nRowsTotal, nRowsReturned=$nRowsReturned, columns=$columns, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'document_id'] = this.documentId;
      json[r'name'] = this.name;
      json[r'blob_hash'] = this.blobHash;
      json[r'n_rows_total'] = this.nRowsTotal;
      json[r'n_rows_returned'] = this.nRowsReturned;
      json[r'columns'] = this.columns;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [DocumentPeek] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentPeek? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'document_id'), 'Required key "DocumentPeek[document_id]" is missing from JSON.');
        assert(json[r'document_id'] != null, 'Required key "DocumentPeek[document_id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "DocumentPeek[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "DocumentPeek[name]" has a null value in JSON.');
        assert(json.containsKey(r'blob_hash'), 'Required key "DocumentPeek[blob_hash]" is missing from JSON.');
        assert(json[r'blob_hash'] != null, 'Required key "DocumentPeek[blob_hash]" has a null value in JSON.');
        assert(json.containsKey(r'n_rows_total'), 'Required key "DocumentPeek[n_rows_total]" is missing from JSON.');
        assert(json[r'n_rows_total'] != null, 'Required key "DocumentPeek[n_rows_total]" has a null value in JSON.');
        assert(json.containsKey(r'n_rows_returned'), 'Required key "DocumentPeek[n_rows_returned]" is missing from JSON.');
        assert(json[r'n_rows_returned'] != null, 'Required key "DocumentPeek[n_rows_returned]" has a null value in JSON.');
        assert(json.containsKey(r'columns'), 'Required key "DocumentPeek[columns]" is missing from JSON.');
        assert(json[r'columns'] != null, 'Required key "DocumentPeek[columns]" has a null value in JSON.');
        assert(json.containsKey(r'data'), 'Required key "DocumentPeek[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "DocumentPeek[data]" has a null value in JSON.');
        return true;
      }());

      return DocumentPeek(
        documentId: mapValueOfType<String>(json, r'document_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        blobHash: mapValueOfType<String>(json, r'blob_hash')!,
        nRowsTotal: mapValueOfType<int>(json, r'n_rows_total')!,
        nRowsReturned: mapValueOfType<int>(json, r'n_rows_returned')!,
        columns: DocumentPeekColumnsInner.listFromJson(json[r'columns']),
        data: json[r'data'] == null
          ? const {}
            : (json[r'data'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v == null ? const <Object>[] : (v as List).cast<Object>())),
      );
    }
    return null;
  }

  static List<DocumentPeek> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentPeek>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentPeek.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocumentPeek> mapFromJson(dynamic json) {
    final map = <String, DocumentPeek>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentPeek.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocumentPeek-objects as value to a dart map
  static Map<String, List<DocumentPeek>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocumentPeek>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocumentPeek.listFromJson(entry.value, growable: growable,);
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
    'n_rows_returned',
    'columns',
    'data',
  };
}

