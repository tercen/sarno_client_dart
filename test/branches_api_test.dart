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


/// tests for BranchesApi
void main() {
  // final instance = BranchesApi();

  group('tests for BranchesApi', () {
    // Merge a source branch into a target branch within a project
    //
    // Three-way merge with conflict detection. Returns 200 on a clean merge (with `merge_event_id`, `events_replayed`, `base_event_id`), 409 with a `conflicts` array on structural conflict. Caller must have the role required by the target branch's `ref_protection` rule (default: `write` on `main`). The orchestrator's `/apply` flow points here to promote an agent's working branch (`agent-<discussion_id>`) into `main`. See `docs/agent_branch_merge.md`.
    //
    //Future<MergeBranches200Response> mergeBranches(String projectId, MergeRequest mergeRequest) async
    test('test mergeBranches', () async {
      // TODO
    });

  });
}
