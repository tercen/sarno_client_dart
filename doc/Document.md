# sarno_client.model.Document

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**projectId** | **String** |  | 
**folderId** | **String** | Null for project root | [optional] 
**name** | **String** |  | 
**blobHash** | **String** | Blake3 content hash | 
**mimeType** | **String** | MIME type (e.g. text/csv, image/png, application/json) | 
**size** | **int** |  | 
**uploadedBy** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


