# sarno_client.model.MergeRequest

## Load the model package
```dart
import 'package:sarno_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_** | **String** | Source branch (where the new events are). The orchestrator's `/apply` flow passes `agent-<discussion_id>` here. | 
**target** | **String** | Target branch that will receive the events. Defaults to `main`. | [optional] 
**message** | **String** | Merge commit message. Defaults to `Merge <source> into <target>`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


