# sarno_client.model.UpdateProjectVisibilityRequest

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**visibility** | **String** | \"internal\" is currently a no-op grant on a user:-owned project (Internal visibility only grants Read within the same org, and personal projects have no org) and is rejected with 400 rather than silently accepted. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


