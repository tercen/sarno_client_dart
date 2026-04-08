# tercen_client.model.GraphNode

## Load the model package
```dart
import 'package:tercen_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**kind** | [**NodeKind**](NodeKind.md) |  | 
**inputs** | [**List<Port>**](Port.md) |  | [default to const []]
**outputs** | [**List<Port>**](Port.md) |  | [default to const []]
**state** | [**TaskState**](TaskState.md) |  | 
**taskId** | **int** |  | [optional] 
**resultManifest** | **String** | Blake3 hash (hex) | [optional] 
**error** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


