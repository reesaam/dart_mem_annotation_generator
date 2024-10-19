// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SampleModel _$SampleModelFromJson(Map<String, dynamic> json) {
  return _SampleModel.fromJson(json);
}

/// @nodoc
mixin _$SampleModel {
// Class Variables Count: 4
//SampleEnum?
  @JsonEnum()
  SampleEnum? get sampleEnum => throw _privateConstructorUsedError; //String?
  String? get name => throw _privateConstructorUsedError; //String?
  String? get description => throw _privateConstructorUsedError; //InnerSample?
  InnerSample? get innerClass => throw _privateConstructorUsedError;

  /// Serializes this SampleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SampleModelCopyWith<SampleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleModelCopyWith<$Res> {
  factory $SampleModelCopyWith(
          SampleModel value, $Res Function(SampleModel) then) =
      _$SampleModelCopyWithImpl<$Res, SampleModel>;
  @useResult
  $Res call(
      {@JsonEnum() SampleEnum? sampleEnum,
      String? name,
      String? description,
      InnerSample? innerClass});
}

/// @nodoc
class _$SampleModelCopyWithImpl<$Res, $Val extends SampleModel>
    implements $SampleModelCopyWith<$Res> {
  _$SampleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleEnum = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? innerClass = freezed,
  }) {
    return _then(_value.copyWith(
      sampleEnum: freezed == sampleEnum
          ? _value.sampleEnum
          : sampleEnum // ignore: cast_nullable_to_non_nullable
              as SampleEnum?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      innerClass: freezed == innerClass
          ? _value.innerClass
          : innerClass // ignore: cast_nullable_to_non_nullable
              as InnerSample?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleModelImplCopyWith<$Res>
    implements $SampleModelCopyWith<$Res> {
  factory _$$SampleModelImplCopyWith(
          _$SampleModelImpl value, $Res Function(_$SampleModelImpl) then) =
      __$$SampleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonEnum() SampleEnum? sampleEnum,
      String? name,
      String? description,
      InnerSample? innerClass});
}

/// @nodoc
class __$$SampleModelImplCopyWithImpl<$Res>
    extends _$SampleModelCopyWithImpl<$Res, _$SampleModelImpl>
    implements _$$SampleModelImplCopyWith<$Res> {
  __$$SampleModelImplCopyWithImpl(
      _$SampleModelImpl _value, $Res Function(_$SampleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleEnum = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? innerClass = freezed,
  }) {
    return _then(_$SampleModelImpl(
      sampleEnum: freezed == sampleEnum
          ? _value.sampleEnum
          : sampleEnum // ignore: cast_nullable_to_non_nullable
              as SampleEnum?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      innerClass: freezed == innerClass
          ? _value.innerClass
          : innerClass // ignore: cast_nullable_to_non_nullable
              as InnerSample?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleModelImpl implements _SampleModel {
  const _$SampleModelImpl(
      {@JsonEnum() this.sampleEnum,
      this.name,
      this.description,
      this.innerClass});

  factory _$SampleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleModelImplFromJson(json);

// Class Variables Count: 4
//SampleEnum?
  @override
  @JsonEnum()
  final SampleEnum? sampleEnum;
//String?
  @override
  final String? name;
//String?
  @override
  final String? description;
//InnerSample?
  @override
  final InnerSample? innerClass;

  @override
  String toString() {
    return 'SampleModel(sampleEnum: $sampleEnum, name: $name, description: $description, innerClass: $innerClass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleModelImpl &&
            (identical(other.sampleEnum, sampleEnum) ||
                other.sampleEnum == sampleEnum) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.innerClass, innerClass) ||
                other.innerClass == innerClass));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sampleEnum, name, description, innerClass);

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleModelImplCopyWith<_$SampleModelImpl> get copyWith =>
      __$$SampleModelImplCopyWithImpl<_$SampleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleModelImplToJson(
      this,
    );
  }
}

abstract class _SampleModel implements SampleModel {
  const factory _SampleModel(
      {@JsonEnum() final SampleEnum? sampleEnum,
      final String? name,
      final String? description,
      final InnerSample? innerClass}) = _$SampleModelImpl;

  factory _SampleModel.fromJson(Map<String, dynamic> json) =
      _$SampleModelImpl.fromJson;

// Class Variables Count: 4
//SampleEnum?
  @override
  @JsonEnum()
  SampleEnum? get sampleEnum; //String?
  @override
  String? get name; //String?
  @override
  String? get description; //InnerSample?
  @override
  InnerSample? get innerClass;

  /// Create a copy of SampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SampleModelImplCopyWith<_$SampleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SampleEntity {
// Class Variables Count: 4
//SampleEnum?
  @JsonEnum()
  SampleEnum? get sampleEnum => throw _privateConstructorUsedError; //String?
  String? get name => throw _privateConstructorUsedError; //String?
  String? get description => throw _privateConstructorUsedError; //InnerSample?
  InnerSample? get innerClass => throw _privateConstructorUsedError;

  /// Create a copy of SampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SampleEntityCopyWith<SampleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleEntityCopyWith<$Res> {
  factory $SampleEntityCopyWith(
          SampleEntity value, $Res Function(SampleEntity) then) =
      _$SampleEntityCopyWithImpl<$Res, SampleEntity>;
  @useResult
  $Res call(
      {@JsonEnum() SampleEnum? sampleEnum,
      String? name,
      String? description,
      InnerSample? innerClass});
}

/// @nodoc
class _$SampleEntityCopyWithImpl<$Res, $Val extends SampleEntity>
    implements $SampleEntityCopyWith<$Res> {
  _$SampleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleEnum = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? innerClass = freezed,
  }) {
    return _then(_value.copyWith(
      sampleEnum: freezed == sampleEnum
          ? _value.sampleEnum
          : sampleEnum // ignore: cast_nullable_to_non_nullable
              as SampleEnum?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      innerClass: freezed == innerClass
          ? _value.innerClass
          : innerClass // ignore: cast_nullable_to_non_nullable
              as InnerSample?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleEntityImplCopyWith<$Res>
    implements $SampleEntityCopyWith<$Res> {
  factory _$$SampleEntityImplCopyWith(
          _$SampleEntityImpl value, $Res Function(_$SampleEntityImpl) then) =
      __$$SampleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonEnum() SampleEnum? sampleEnum,
      String? name,
      String? description,
      InnerSample? innerClass});
}

/// @nodoc
class __$$SampleEntityImplCopyWithImpl<$Res>
    extends _$SampleEntityCopyWithImpl<$Res, _$SampleEntityImpl>
    implements _$$SampleEntityImplCopyWith<$Res> {
  __$$SampleEntityImplCopyWithImpl(
      _$SampleEntityImpl _value, $Res Function(_$SampleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleEnum = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? innerClass = freezed,
  }) {
    return _then(_$SampleEntityImpl(
      sampleEnum: freezed == sampleEnum
          ? _value.sampleEnum
          : sampleEnum // ignore: cast_nullable_to_non_nullable
              as SampleEnum?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      innerClass: freezed == innerClass
          ? _value.innerClass
          : innerClass // ignore: cast_nullable_to_non_nullable
              as InnerSample?,
    ));
  }
}

/// @nodoc

class _$SampleEntityImpl implements _SampleEntity {
  const _$SampleEntityImpl(
      {@JsonEnum() this.sampleEnum,
      this.name,
      this.description,
      this.innerClass});

// Class Variables Count: 4
//SampleEnum?
  @override
  @JsonEnum()
  final SampleEnum? sampleEnum;
//String?
  @override
  final String? name;
//String?
  @override
  final String? description;
//InnerSample?
  @override
  final InnerSample? innerClass;

  @override
  String toString() {
    return 'SampleEntity(sampleEnum: $sampleEnum, name: $name, description: $description, innerClass: $innerClass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleEntityImpl &&
            (identical(other.sampleEnum, sampleEnum) ||
                other.sampleEnum == sampleEnum) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.innerClass, innerClass) ||
                other.innerClass == innerClass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sampleEnum, name, description, innerClass);

  /// Create a copy of SampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleEntityImplCopyWith<_$SampleEntityImpl> get copyWith =>
      __$$SampleEntityImplCopyWithImpl<_$SampleEntityImpl>(this, _$identity);
}

abstract class _SampleEntity implements SampleEntity {
  const factory _SampleEntity(
      {@JsonEnum() final SampleEnum? sampleEnum,
      final String? name,
      final String? description,
      final InnerSample? innerClass}) = _$SampleEntityImpl;

// Class Variables Count: 4
//SampleEnum?
  @override
  @JsonEnum()
  SampleEnum? get sampleEnum; //String?
  @override
  String? get name; //String?
  @override
  String? get description; //InnerSample?
  @override
  InnerSample? get innerClass;

  /// Create a copy of SampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SampleEntityImplCopyWith<_$SampleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
