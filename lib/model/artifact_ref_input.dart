//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArtifactRefInput {
  /// Returns a new [ArtifactRefInput] instance.
  ArtifactRefInput({
    required this.key,
    required this.documentId,
    this.derivedFrom,
    this.render,
  });

  /// Matches a `data-sarno-ref` placeholder in body_html. `^[A-Za-z0-9_-]{1,64}$`.
  String key;

  /// The referenced Document. The caller must have Read access to it.
  String documentId;

  /// Optional: the source document this rendered image was derived from (e.g. the table a plot was drawn from), for provenance display.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? derivedFrom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArtifactRefRender? render;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactRefInput &&
    other.key == key &&
    other.documentId == documentId &&
    other.derivedFrom == derivedFrom &&
    other.render == render;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (documentId.hashCode) +
    (derivedFrom == null ? 0 : derivedFrom!.hashCode) +
    (render == null ? 0 : render!.hashCode);

  @override
  String toString() => 'ArtifactRefInput[key=$key, documentId=$documentId, derivedFrom=$derivedFrom, render=$render]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
      json[r'document_id'] = this.documentId;
    if (this.derivedFrom != null) {
      json[r'derived_from'] = this.derivedFrom;
    } else {
      json[r'derived_from'] = null;
    }
    if (this.render != null) {
      json[r'render'] = this.render;
    } else {
      json[r'render'] = null;
    }
    return json;
  }

  /// Returns a new [ArtifactRefInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactRefInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'key'), 'Required key "ArtifactRefInput[key]" is missing from JSON.');
        assert(json[r'key'] != null, 'Required key "ArtifactRefInput[key]" has a null value in JSON.');
        assert(json.containsKey(r'document_id'), 'Required key "ArtifactRefInput[document_id]" is missing from JSON.');
        assert(json[r'document_id'] != null, 'Required key "ArtifactRefInput[document_id]" has a null value in JSON.');
        return true;
      }());

      return ArtifactRefInput(
        key: mapValueOfType<String>(json, r'key')!,
        documentId: mapValueOfType<String>(json, r'document_id')!,
        derivedFrom: mapValueOfType<String>(json, r'derived_from'),
        render: ArtifactRefRender.fromJson(json[r'render']),
      );
    }
    return null;
  }

  static List<ArtifactRefInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactRefInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactRefInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactRefInput> mapFromJson(dynamic json) {
    final map = <String, ArtifactRefInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactRefInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactRefInput-objects as value to a dart map
  static Map<String, List<ArtifactRefInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactRefInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactRefInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'document_id',
  };
}

