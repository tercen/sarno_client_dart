# sarno_client.model.ArtifactSummary

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**url** | **String** |  | 
**title** | **String** |  | 
**assembledBy** | **String** |  | 
**assembledAt** | [**DateTime**](DateTime.md) |  | 
**refCount** | **int** |  | 
**viewerCanOpen** | **bool** |  | 
**missingRefCount** | **int** | References whose source document no longer exists; does not by itself block opening. | 
**expiresAt** | **int** | Unix seconds deadline for the hourly TTL sweep to delete this artifact; null if no TTL is set. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


