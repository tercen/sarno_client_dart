# sarno_client.model.ArtifactRefInput

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | Matches a `data-sarno-ref` placeholder in body_html. `^[A-Za-z0-9_-]{1,64}$`. | 
**documentId** | **String** | The referenced Document. The caller must have Read access to it. | 
**derivedFrom** | **String** | Optional: the source document this rendered image was derived from (e.g. the table a plot was drawn from), for provenance display. | [optional] 
**render** | [**ArtifactRefRender**](ArtifactRefRender.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


