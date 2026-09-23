# sarno_client.model.CreateArtifactRequest

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | 
**bodyHtml** | **String** | Raw HTML; sanitized and size/nesting-capped server-side (see doc/artifacts.md). | 
**refs** | [**List<ArtifactRefInput>**](ArtifactRefInput.md) |  | [optional] [default to const []]
**name** | **String** | Document filename; defaults to a name derived from the title. | [optional] 
**ttlSeconds** | **int** | Optional auto-expiry, in seconds from now (max ~1 year). On create: omit for \"never expires\". On update: omit to leave any existing TTL untouched — there is no separate call to clear it. Must be a positive whole number of seconds; a JSON float is rejected. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


