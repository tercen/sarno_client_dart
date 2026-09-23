//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:sarno_client/api.dart';
import 'package:test/test.dart';

// tests for CreateArtifactRequest
void main() {
  // final instance = CreateArtifactRequest();

  group('test CreateArtifactRequest', () {
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // Raw HTML; sanitized and size/nesting-capped server-side (see doc/artifacts.md).
    // String bodyHtml
    test('to test the property `bodyHtml`', () async {
      // TODO
    });

    // List<ArtifactRefInput> refs (default value: const [])
    test('to test the property `refs`', () async {
      // TODO
    });

    // Document filename; defaults to a name derived from the title.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Optional auto-expiry, in seconds from now (max ~1 year). On create: omit for \"never expires\". On update: omit to leave any existing TTL untouched — there is no separate call to clear it. Must be a positive whole number of seconds; a JSON float is rejected.
    // int ttlSeconds
    test('to test the property `ttlSeconds`', () async {
      // TODO
    });


  });

}
