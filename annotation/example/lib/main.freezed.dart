// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InnerSampleModel _$InnerSampleModelFromJson(Map<String, dynamic> json) {
  return _InnerSampleModel.fromJson(json);
}

/// @nodoc
mixin _$InnerSampleModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerSampleModelCopyWith<InnerSampleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerSampleModelCopyWith<$Res> {
  factory $InnerSampleModelCopyWith(
          InnerSampleModel value, $Res Function(InnerSampleModel) then) =
      _$InnerSampleModelCopyWithImpl<$Res, InnerSampleModel>;
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class _$InnerSampleModelCopyWithImpl<$Res, $Val extends InnerSampleModel>
    implements $InnerSampleModelCopyWith<$Res> {
  _$InnerSampleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InnerSampleModelImplCopyWith<$Res>
    implements $InnerSampleModelCopyWith<$Res> {
  factory _$$InnerSampleModelImplCopyWith(_$InnerSampleModelImpl value,
          $Res Function(_$InnerSampleModelImpl) then) =
      __$$InnerSampleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class __$$InnerSampleModelImplCopyWithImpl<$Res>
    extends _$InnerSampleModelCopyWithImpl<$Res, _$InnerSampleModelImpl>
    implements _$$InnerSampleModelImplCopyWith<$Res> {
  __$$InnerSampleModelImplCopyWithImpl(_$InnerSampleModelImpl _value,
      $Res Function(_$InnerSampleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$InnerSampleModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnerSampleModelImpl implements _InnerSampleModel {
  const _$InnerSampleModelImpl({this.name, this.description});

  factory _$InnerSampleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerSampleModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'InnerSampleModel(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerSampleModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerSampleModelImplCopyWith<_$InnerSampleModelImpl> get copyWith =>
      __$$InnerSampleModelImplCopyWithImpl<_$InnerSampleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerSampleModelImplToJson(
      this,
    );
  }
}

abstract class _InnerSampleModel implements InnerSampleModel {
  const factory _InnerSampleModel(
      {final String? name, final String? description}) = _$InnerSampleModelImpl;

  factory _InnerSampleModel.fromJson(Map<String, dynamic> json) =
      _$InnerSampleModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$InnerSampleModelImplCopyWith<_$InnerSampleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InnerSampleEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnerSampleEntityCopyWith<InnerSampleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerSampleEntityCopyWith<$Res> {
  factory $InnerSampleEntityCopyWith(
          InnerSampleEntity value, $Res Function(InnerSampleEntity) then) =
      _$InnerSampleEntityCopyWithImpl<$Res, InnerSampleEntity>;
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class _$InnerSampleEntityCopyWithImpl<$Res, $Val extends InnerSampleEntity>
    implements $InnerSampleEntityCopyWith<$Res> {
  _$InnerSampleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InnerSampleEntityImplCopyWith<$Res>
    implements $InnerSampleEntityCopyWith<$Res> {
  factory _$$InnerSampleEntityImplCopyWith(_$InnerSampleEntityImpl value,
          $Res Function(_$InnerSampleEntityImpl) then) =
      __$$InnerSampleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class __$$InnerSampleEntityImplCopyWithImpl<$Res>
    extends _$InnerSampleEntityCopyWithImpl<$Res, _$InnerSampleEntityImpl>
    implements _$$InnerSampleEntityImplCopyWith<$Res> {
  __$$InnerSampleEntityImplCopyWithImpl(_$InnerSampleEntityImpl _value,
      $Res Function(_$InnerSampleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$InnerSampleEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InnerSampleEntityImpl implements _InnerSampleEntity {
  const _$InnerSampleEntityImpl({this.name, this.description});

  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'InnerSampleEntity(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerSampleEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerSampleEntityImplCopyWith<_$InnerSampleEntityImpl> get copyWith =>
      __$$InnerSampleEntityImplCopyWithImpl<_$InnerSampleEntityImpl>(
          this, _$identity);
}

abstract class _InnerSampleEntity implements InnerSampleEntity {
  const factory _InnerSampleEntity(
      {final String? name,
      final String? description}) = _$InnerSampleEntityImpl;

  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$InnerSampleEntityImplCopyWith<_$InnerSampleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
