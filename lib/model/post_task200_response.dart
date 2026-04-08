//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostTask200Response {
  /// Returns a new [PostTask200Response] instance.
  PostTask200Response({
    required this.success,
    this.data,
  });

  PostTask200ResponseSuccessEnum success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PostTask200ResponseAllOfData? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostTask200Response &&
    other.success == success &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'PostTask200Response[success=$success, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    return json;
  }

  /// Returns a new [PostTask200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostTask200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "PostTask200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "PostTask200Response[success]" has a null value in JSON.');
        return true;
      }());

      return PostTask200Response(
        success: PostTask200ResponseSuccessEnum.fromJson(json[r'success'])!,
        data: PostTask200ResponseAllOfData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<PostTask200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostTask200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostTask200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostTask200Response> mapFromJson(dynamic json) {
    final map = <String, PostTask200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostTask200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostTask200Response-objects as value to a dart map
  static Map<String, List<PostTask200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostTask200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostTask200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}


class PostTask200ResponseSuccessEnum {
  /// Instantiate a new enum with the provided [value].
  const PostTask200ResponseSuccessEnum._(this.value);

  /// The underlying value of this enum member.
  final bool value;

  @override
  String toString() => value.toString();

  bool toJson() => value;

  static const true_ = PostTask200ResponseSuccessEnum._('true');

  /// List of all possible values in this [enum][PostTask200ResponseSuccessEnum].
  static const values = <PostTask200ResponseSuccessEnum>[
    true_,
  ];

  static PostTask200ResponseSuccessEnum? fromJson(dynamic value) => PostTask200ResponseSuccessEnumTypeTransformer().decode(value);

  static List<PostTask200ResponseSuccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostTask200ResponseSuccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostTask200ResponseSuccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PostTask200ResponseSuccessEnum] to bool,
/// and [decode] dynamic data back to [PostTask200ResponseSuccessEnum].
class PostTask200ResponseSuccessEnumTypeTransformer {
  factory PostTask200ResponseSuccessEnumTypeTransformer() => _instance ??= const PostTask200ResponseSuccessEnumTypeTransformer._();

  const PostTask200ResponseSuccessEnumTypeTransformer._();

  bool encode(PostTask200ResponseSuccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostTask200ResponseSuccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostTask200ResponseSuccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'true': return PostTask200ResponseSuccessEnum.true_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostTask200ResponseSuccessEnumTypeTransformer] instance.
  static PostTask200ResponseSuccessEnumTypeTransformer? _instance;
}


