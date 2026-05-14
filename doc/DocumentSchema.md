# sarno_client.model.DocumentSchema

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**documentId** | **String** |  | 
**name** | **String** |  | 
**blobHash** | **String** |  | 
**nRowsTotal** | **int** | Total rows in the table (from parquet footer) | 
**columns** | [**List<DocumentPeekColumnsInner>**](DocumentPeekColumnsInner.md) | Schema in column order | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


