# sarno_client.model.DocumentPeek

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**documentId** | **String** |  | 
**name** | **String** | Document display name | 
**blobHash** | **String** | Internal blob hash for diagnostics | 
**nRowsTotal** | **int** | Total rows in the table | 
**nRowsReturned** | **int** | Rows actually returned (≤ max_rows) | 
**columns** | [**List<DocumentPeekColumnsInner>**](DocumentPeekColumnsInner.md) | Schema in column order | [default to const []]
**data** | [**Map<String, List<Object>>**](List.md) | Column-oriented data: each key is a column name, value is an array of cell values. Numeric columns are JSON numbers, string columns are JSON strings. | [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


