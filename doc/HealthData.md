# sarno_client.model.HealthData

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | 
**queueDepth** | **int** |  | 
**version** | **String** | Sarno board version (Cargo package version). | 
**commit** | **String** | Git short SHA of the running build, or \"unknown\" if the build had no git metadata. | 
**startedAt** | [**DateTime**](DateTime.md) | When the board process started (RFC 3339 UTC). | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


