# sarno_client.model.ArtifactComment

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**refKey** | **String** | Reference the comment is pinned to; null for the whole artifact. | [optional] 
**author** | **String** |  | 
**body** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**onCurrentVersion** | **bool** | False for comments made before the artifact was last regenerated. | 
**resolved** | **bool** |  | 
**resolvedBy** | **String** |  | [optional] 
**resolvedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


