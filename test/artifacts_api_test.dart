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


/// tests for ArtifactsApi
void main() {
  // final instance = ArtifactsApi();

  group('tests for ArtifactsApi', () {
    // Add a comment
    //
    // Same access as reading. Plain text, 1-4000 bytes; `ref_key` must be one of the artifact's references. At most 1000 comments per artifact (429 past that).
    //
    //Future<ArtifactComment> addArtifactComment(String documentId, AddArtifactCommentRequest addArtifactCommentRequest) async
    test('test addArtifactComment', () async {
      // TODO
    });

    // Dry-run: would a named user actually be able to open this artifact?
    //
    // Owner-facing only (requires Admin on the artifact's project) — reports, per source project the artifact references, whether the named user has Read. Sharing the artifact document alone does not share what it references; see doc/artifacts.md.
    //
    //Future<CheckArtifactShare200Response> checkArtifactShare(String documentId, ArtifactShareCheckRequest artifactShareCheckRequest) async
    test('test checkArtifactShare', () async {
      // TODO
    });

    // Create a new Sarno Artifact
    //
    // Sanitizes body_html, validates and snapshots each reference (author must have Read on every cited document), lazily creates the caller's own artifact project if needed, seals and stores the manifest. See doc/artifacts.md.
    //
    //Future<CreateArtifact200Response> createArtifact(CreateArtifactRequest createArtifactRequest) async
    test('test createArtifact', () async {
      // TODO
    });

    // Delete an artifact outright
    //
    // Requires Admin on the artifact's own project (same bar as sharing). Deletes the artifact's dedicated project; referenced documents and their own projects are untouched. Irreversible.
    //
    //Future<DeleteGraph200Response> deleteArtifact(String documentId) async
    test('test deleteArtifact', () async {
      // TODO
    });

    // Delete a comment
    //
    // The comment's author or whoever can administer the artifact.
    //
    //Future<DeleteArtifactComment200Response> deleteArtifactComment(String documentId, String commentId) async
    test('test deleteArtifactComment', () async {
      // TODO
    });

    // A comment's Delete button (browser-facing)
    //
    // Form post with the page's view grant `v`; author or artifact admin only.
    //
    //Future deleteArtifactCommentForm(String documentId, String commentId, String v) async
    test('test deleteArtifactCommentForm', () async {
      // TODO
    });

    // Get an artifact's summary, including whether the caller could open it
    //
    //Future<GetArtifact200Response> getArtifact(String documentId) async
    test('test getArtifact', () async {
      // TODO
    });

    // Fetch one referenced image (browser-facing, grant-gated)
    //
    // The `g` grant proves the shell already ran the gate once for this viewer/key/artifact; the ACL is still independently re-checked against the reference's CURRENT project on every call (TOCTOU). Only an image-mime allowlist is served inline; anything else is refused, except a table reference (`render.as = table`), whose requested `page` the board renders to PNG from rows fetched from the worker holding the Parquet source (only the row groups that page needs are read; the file is never copied to the board).
    //
    //Future<MultipartFile> getArtifactRef(String documentId, String key, String g, { int page, String print }) async
    test('test getArtifactRef', () async {
      // TODO
    });

    // List an artifact's comments, oldest first
    //
    // Anyone who can open the artifact (Read on its project plus the all-or-nothing reference gate) can read its comments. 404 otherwise, 403 if the artifact is readable but something it cites is not.
    //
    //Future<ArtifactCommentList> listArtifactComments(String documentId) async
    test('test listArtifactComments', () async {
      // TODO
    });

    // List the caller's own artifacts
    //
    // Every artifact document in the caller's own lazily-created artifact project.
    //
    //Future<ListArtifacts200Response> listArtifacts() async
    test('test listArtifacts', () async {
      // TODO
    });

    // The artifact page's comment form (browser-facing)
    //
    // `application/x-www-form-urlencoded`: `v` (the page's view grant — the browser's only credential; no cookies), `body`, optional `ref`, plus the page's own `branch`/`p.<key>` parameters, which the 303 redirect back to the page keeps.
    //
    //Future postArtifactCommentForm(String documentId, String v, String body, { String ref }) async
    test('test postArtifactCommentForm', () async {
      // TODO
    });

    // Resolve or reopen a comment
    //
    // The comment's author or whoever can administer the artifact. `resolved` defaults to true; false reopens.
    //
    //Future<ArtifactComment> resolveArtifactComment(String documentId, String commentId, { ResolveArtifactCommentRequest resolveArtifactCommentRequest }) async
    test('test resolveArtifactComment', () async {
      // TODO
    });

    // Add a collaborator on the artifact's own project, then report whether they could actually open it
    //
    //Future<ShareArtifact200Response> shareArtifact(String documentId, ArtifactShareRequest artifactShareRequest) async
    test('test shareArtifact', () async {
      // TODO
    });

    // Regenerate an artifact in place
    //
    // A doc_update on the SAME document id, not a new document — the share URL survives regeneration, and the prior version is preserved in the document's history. Requires Write on the artifact's project.
    //
    //Future<CreateArtifact200Response> updateArtifact(String documentId, CreateArtifactRequest createArtifactRequest) async
    test('test updateArtifact', () async {
      // TODO
    });

    // Render an artifact page (browser-facing)
    //
    // No script ever runs on this page. Every image reference is rewritten server-side into a short-lived, per-viewer signed grant URL. Every denial — the artifact doesn't exist, the caller can't read it, or the caller can read it but not everything it cites — returns the SAME generic response; see doc/artifacts.md's all-or-nothing gate section. Accepts `?token=<bearer>` for a plain browser navigation with no Authorization header (mirrors the app-serving `?token=` promotion). Table references render as a scrollable page image plus pager links; `?p.<key>=<n>` selects each table's 1-based page (clamped to the table's range), one parameter per table.
    //
    //Future<String> viewArtifact(String documentId, { String token, String v, String print, String branch }) async
    test('test viewArtifact', () async {
      // TODO
    });

  });
}
