// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_inner_inner_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InnerInnerSampleModel _$InnerInnerSampleModelFromJson(
    Map<String, dynamic> json) {
  return _InnerInnerSampleModel.fromJson(json);
}

/// @nodoc
mixin _$InnerInnerSampleModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get longDescription => throw _privateConstructorUsedError;

  /// Serializes this InnerInnerSampleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InnerInnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InnerInnerSampleModelCopyWith<InnerInnerSampleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerInnerSampleModelCopyWith<$Res> {
  factory $InnerInnerSampleModelCopyWith(InnerInnerSampleModel value,
          $Res Function(InnerInnerSampleModel) then) =
      _$InnerInnerSampleModelCopyWithImpl<$Res, InnerInnerSampleModel>;
  @useResult
  $Res call({String? name, String? description, String? longDescription});
}

/// @nodoc
class _$InnerInnerSampleModelCopyWithImpl<$Res,
        $Val extends InnerInnerSampleModel>
    implements $InnerInnerSampleModelCopyWith<$Res> {
  _$InnerInnerSampleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InnerInnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InnerInnerSampleModelImplCopyWith<$Res>
    implements $InnerInnerSampleModelCopyWith<$Res> {
  factory _$$InnerInnerSampleModelImplCopyWith(
          _$InnerInnerSampleModelImpl value,
          $Res Function(_$InnerInnerSampleModelImpl) then) =
      __$$InnerInnerSampleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description, String? longDescription});
}

/// @nodoc
class __$$InnerInnerSampleModelImplCopyWithImpl<$Res>
    extends _$InnerInnerSampleModelCopyWithImpl<$Res,
        _$InnerInnerSampleModelImpl>
    implements _$$InnerInnerSampleModelImplCopyWith<$Res> {
  __$$InnerInnerSampleModelImplCopyWithImpl(_$InnerInnerSampleModelImpl _value,
      $Res Function(_$InnerInnerSampleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InnerInnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_$InnerInnerSampleModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnerInnerSampleModelImpl implements _InnerInnerSampleModel {
  const _$InnerInnerSampleModelImpl(
      {this.name, this.description, this.longDescription});

  factory _$InnerInnerSampleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerInnerSampleModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? longDescription;

  @override
  String toString() {
    return 'InnerInnerSampleModel(name: $name, description: $description, longDescription: $longDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerInnerSampleModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, longDescription);

  /// Create a copy of InnerInnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerInnerSampleModelImplCopyWith<_$InnerInnerSampleModelImpl>
      get copyWith => __$$InnerInnerSampleModelImplCopyWithImpl<
          _$InnerInnerSampleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerInnerSampleModelImplToJson(
      this,
    );
  }
}

abstract class _InnerInnerSampleModel implements InnerInnerSampleModel {
  const factory _InnerInnerSampleModel(
      {final String? name,
      final String? description,
      final String? longDescription}) = _$InnerInnerSampleModelImpl;

  factory _InnerInnerSampleModel.fromJson(Map<String, dynamic> json) =
      _$InnerInnerSampleModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get longDescription;

  /// Create a copy of InnerInnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InnerInnerSampleModelImplCopyWith<_$InnerInnerSampleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InnerInnerSampleEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get longDescription => throw _privateConstructorUsedError;

  /// Create a copy of InnerInnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InnerInnerSampleEntityCopyWith<InnerInnerSampleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerInnerSampleEntityCopyWith<$Res> {
  factory $InnerInnerSampleEntityCopyWith(InnerInnerSampleEntity value,
          $Res Function(InnerInnerSampleEntity) then) =
      _$InnerInnerSampleEntityCopyWithImpl<$Res, InnerInnerSampleEntity>;
  @useResult
  $Res call({String? name, String? description, String? longDescription});
}

/// @nodoc
class _$InnerInnerSampleEntityCopyWithImpl<$Res,
        $Val extends InnerInnerSampleEntity>
    implements $InnerInnerSampleEntityCopyWith<$Res> {
  _$InnerInnerSampleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InnerInnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InnerInnerSampleEntityImplCopyWith<$Res>
    implements $InnerInnerSampleEntityCopyWith<$Res> {
  factory _$$InnerInnerSampleEntityImplCopyWith(
          _$InnerInnerSampleEntityImpl value,
          $Res Function(_$InnerInnerSampleEntityImpl) then) =
      __$$InnerInnerSampleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description, String? longDescription});
}

/// @nodoc
class __$$InnerInnerSampleEntityImplCopyWithImpl<$Res>
    extends _$InnerInnerSampleEntityCopyWithImpl<$Res,
        _$InnerInnerSampleEntityImpl>
    implements _$$InnerInnerSampleEntityImplCopyWith<$Res> {
  __$$InnerInnerSampleEntityImplCopyWithImpl(
      _$InnerInnerSampleEntityImpl _value,
      $Res Function(_$InnerInnerSampleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InnerInnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_$InnerInnerSampleEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InnerInnerSampleEntityImpl implements _InnerInnerSampleEntity {
  const _$InnerInnerSampleEntityImpl(
      {this.name, this.description, this.longDescription});

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? longDescription;

  @override
  String toString() {
    return 'InnerInnerSampleEntity(name: $name, description: $description, longDescription: $longDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerInnerSampleEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, longDescription);

  /// Create a copy of InnerInnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerInnerSampleEntityImplCopyWith<_$InnerInnerSampleEntityImpl>
      get copyWith => __$$InnerInnerSampleEntityImplCopyWithImpl<
          _$InnerInnerSampleEntityImpl>(this, _$identity);
}

abstract class _InnerInnerSampleEntity implements InnerInnerSampleEntity {
  const factory _InnerInnerSampleEntity(
      {final String? name,
      final String? description,
      final String? longDescription}) = _$InnerInnerSampleEntityImpl;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get longDescription;

  /// Create a copy of InnerInnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InnerInnerSampleEntityImplCopyWith<_$InnerInnerSampleEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
