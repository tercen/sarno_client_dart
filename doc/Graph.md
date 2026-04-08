# sarno_client.model.Graph

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**nodes** | [**List<GraphNode>**](GraphNode.md) |  | [default to const []]
**edges** | [**List<GraphEdge>**](GraphEdge.md) |  | [default to const []]
**owner** | **String** |  | 
**workflowId** | **String** |  | [optional] 
**projectId** | **String** | Legacy text project ID | [optional] 
**projectUuid** | **String** | Layer 1 project FK | [optional] 
**folderId** | **String** | Layer 1 folder FK | [optional] 
**createdAt** | **int** | Unix ms | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


