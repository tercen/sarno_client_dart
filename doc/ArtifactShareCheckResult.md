# sarno_client.model.ArtifactShareCheckResult

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** |  | 
**wouldOpen** | **bool** | True only if the named user currently has Read on every project this artifact references. | 
**projects** | [**List<ArtifactAccessBreakdown>**](ArtifactAccessBreakdown.md) |  | [optional] [default to const []]
**missingReadOnProjects** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


