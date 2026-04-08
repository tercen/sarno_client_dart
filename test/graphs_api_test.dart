//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:tercen_client/api.dart';
import 'package:test/test.dart';


/// tests for GraphsApi
void main() {
  // final instance = GraphsApi();

  group('tests for GraphsApi', () {
    // Create a new computation graph
    //
    // Requires Write permission on the target project (project_id in graph body).
    //
    //Future<CreateGraph200Response> createGraph(Graph graph) async
    test('test createGraph', () async {
      // TODO
    });

    // Delete a graph
    //
    // Requires Admin permission on the graph's project.
    //
    //Future<DeleteGraph200Response> deleteGraph(String id) async
    test('test deleteGraph', () async {
      // TODO
    });

    // Get current graph state
    //
    // Requires Read permission on the graph's project.
    //
    //Future<GetGraph200Response> getGraph(String id) async
    test('test getGraph', () async {
      // TODO
    });

    // Get graph state at a specific revision (time travel)
    //
    //Future<GetGraph200Response> getGraphAtRevision(String id, int rev) async
    test('test getGraphAtRevision', () async {
      // TODO
    });

    // Get patch history for a graph
    //
    //Future<GetGraphHistory200Response> getGraphHistory(String id) async
    test('test getGraphHistory', () async {
      // TODO
    });

    // Apply JSON Patch (RFC 6902) to graph
    //
    // Requires Write permission on the graph's project. Uses optimistic locking via revision.
    //
    //Future<PatchGraph200Response> patchGraph(String id, PatchRequest patchRequest) async
    test('test patchGraph', () async {
      // TODO
    });

    // Submit graph for execution
    //
    // Requires Write permission. Board walks DAG topologically, posts each node as a task.
    //
    //Future<SubmitGraph200Response> submitGraph(String id) async
    test('test submitGraph', () async {
      // TODO
    });

  });
}
