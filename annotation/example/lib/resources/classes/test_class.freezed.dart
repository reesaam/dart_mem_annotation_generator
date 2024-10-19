// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestModel _$TestModelFromJson(Map<String, dynamic> json) {
  return _TestModel.fromJson(json);
}

/// @nodoc
mixin _$TestModel {
// Class Variables Count: 4
//String?
  String? get name => throw _privateConstructorUsedError; //String?
  String? get description => throw _privateConstructorUsedError; //InnerTest?
  InnerTest? get innerClass => throw _privateConstructorUsedError; //InnerTest?
  InnerTest? get innerClass2 => throw _privateConstructorUsedError;

  /// Serializes this TestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestModelCopyWith<TestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestModelCopyWith<$Res> {
  factory $TestModelCopyWith(TestModel value, $Res Function(TestModel) then) =
      _$TestModelCopyWithImpl<$Res, TestModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      InnerTest? innerClass,
      InnerTest? innerClass2});
}

/// @nodoc
class _$TestModelCopyWithImpl<$Res, $Val extends TestModel>
    implements $TestModelCopyWith<$Res> {
  _$TestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? innerClass = freezed,
    Object? innerClass2 = freezed,
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
      innerClass: freezed == innerClass
          ? _value.innerClass
          : innerClass // ignore: cast_nullable_to_non_nullable
              as InnerTest?,
      innerClass2: freezed == innerClass2
          ? _value.innerClass2
          : innerClass2 // ignore: cast_nullable_to_non_nullable
              as InnerTest?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestModelImplCopyWith<$Res>
    implements $TestModelCopyWith<$Res> {
  factory _$$TestModelImplCopyWith(
          _$TestModelImpl value, $Res Function(_$TestModelImpl) then) =
      __$$TestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      InnerTest? innerClass,
      InnerTest? innerClass2});
}

/// @nodoc
class __$$TestModelImplCopyWithImpl<$Res>
    extends _$TestModelCopyWithImpl<$Res, _$TestModelImpl>
    implements _$$TestModelImplCopyWith<$Res> {
  __$$TestModelImplCopyWithImpl(
      _$TestModelImpl _value, $Res Function(_$TestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? innerClass = freezed,
    Object? innerClass2 = freezed,
  }) {
    return _then(_$TestModelImpl(
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
              as InnerTest?,
      innerClass2: freezed == innerClass2
          ? _value.innerClass2
          : innerClass2 // ignore: cast_nullable_to_non_nullable
              as InnerTest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestModelImpl implements _TestModel {
  const _$TestModelImpl(
      {this.name, this.description, this.innerClass, this.innerClass2});

  factory _$TestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestModelImplFromJson(json);

// Class Variables Count: 4
//String?
  @override
  final String? name;
//String?
  @override
  final String? description;
//InnerTest?
  @override
  final InnerTest? innerClass;
//InnerTest?
  @override
  final InnerTest? innerClass2;

  @override
  String toString() {
    return 'TestModel(name: $name, description: $description, innerClass: $innerClass, innerClass2: $innerClass2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.innerClass, innerClass) ||
                other.innerClass == innerClass) &&
            (identical(other.innerClass2, innerClass2) ||
                other.innerClass2 == innerClass2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, innerClass, innerClass2);

  /// Create a copy of TestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestModelImplCopyWith<_$TestModelImpl> get copyWith =>
      __$$TestModelImplCopyWithImpl<_$TestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestModelImplToJson(
      this,
    );
  }
}

abstract class _TestModel implements TestModel {
  const factory _TestModel(
      {final String? name,
      final String? description,
      final InnerTest? innerClass,
      final InnerTest? innerClass2}) = _$TestModelImpl;

  factory _TestModel.fromJson(Map<String, dynamic> json) =
      _$TestModelImpl.fromJson;

// Class Variables Count: 4
//String?
  @override
  String? get name; //String?
  @override
  String? get description; //InnerTest?
  @override
  InnerTest? get innerClass; //InnerTest?
  @override
  InnerTest? get innerClass2;

  /// Create a copy of TestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestModelImplCopyWith<_$TestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TestEntity {
// Class Variables Count: 4
//String?
  String? get name => throw _privateConstructorUsedError; //String?
  String? get description => throw _privateConstructorUsedError; //InnerTest?
  InnerTest? get innerClass => throw _privateConstructorUsedError; //InnerTest?
  InnerTest? get innerClass2 => throw _privateConstructorUsedError;

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestEntityCopyWith<TestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEntityCopyWith<$Res> {
  factory $TestEntityCopyWith(
          TestEntity value, $Res Function(TestEntity) then) =
      _$TestEntityCopyWithImpl<$Res, TestEntity>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      InnerTest? innerClass,
      InnerTest? innerClass2});
}

/// @nodoc
class _$TestEntityCopyWithImpl<$Res, $Val extends TestEntity>
    implements $TestEntityCopyWith<$Res> {
  _$TestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? innerClass = freezed,
    Object? innerClass2 = freezed,
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
      innerClass: freezed == innerClass
          ? _value.innerClass
          : innerClass // ignore: cast_nullable_to_non_nullable
              as InnerTest?,
      innerClass2: freezed == innerClass2
          ? _value.innerClass2
          : innerClass2 // ignore: cast_nullable_to_non_nullable
              as InnerTest?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestEntityImplCopyWith<$Res>
    implements $TestEntityCopyWith<$Res> {
  factory _$$TestEntityImplCopyWith(
          _$TestEntityImpl value, $Res Function(_$TestEntityImpl) then) =
      __$$TestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      InnerTest? innerClass,
      InnerTest? innerClass2});
}

/// @nodoc
class __$$TestEntityImplCopyWithImpl<$Res>
    extends _$TestEntityCopyWithImpl<$Res, _$TestEntityImpl>
    implements _$$TestEntityImplCopyWith<$Res> {
  __$$TestEntityImplCopyWithImpl(
      _$TestEntityImpl _value, $Res Function(_$TestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? innerClass = freezed,
    Object? innerClass2 = freezed,
  }) {
    return _then(_$TestEntityImpl(
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
              as InnerTest?,
      innerClass2: freezed == innerClass2
          ? _value.innerClass2
          : innerClass2 // ignore: cast_nullable_to_non_nullable
              as InnerTest?,
    ));
  }
}

/// @nodoc

class _$TestEntityImpl implements _TestEntity {
  const _$TestEntityImpl(
      {this.name, this.description, this.innerClass, this.innerClass2});

// Class Variables Count: 4
//String?
  @override
  final String? name;
//String?
  @override
  final String? description;
//InnerTest?
  @override
  final InnerTest? innerClass;
//InnerTest?
  @override
  final InnerTest? innerClass2;

  @override
  String toString() {
    return 'TestEntity(name: $name, description: $description, innerClass: $innerClass, innerClass2: $innerClass2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.innerClass, innerClass) ||
                other.innerClass == innerClass) &&
            (identical(other.innerClass2, innerClass2) ||
                other.innerClass2 == innerClass2));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, innerClass, innerClass2);

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestEntityImplCopyWith<_$TestEntityImpl> get copyWith =>
      __$$TestEntityImplCopyWithImpl<_$TestEntityImpl>(this, _$identity);
}

abstract class _TestEntity implements TestEntity {
  const factory _TestEntity(
      {final String? name,
      final String? description,
      final InnerTest? innerClass,
      final InnerTest? innerClass2}) = _$TestEntityImpl;

// Class Variables Count: 4
//String?
  @override
  String? get name; //String?
  @override
  String? get description; //InnerTest?
  @override
  InnerTest? get innerClass; //InnerTest?
  @override
  InnerTest? get innerClass2;

  /// Create a copy of TestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestEntityImplCopyWith<_$TestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InnerTestModel _$InnerTestModelFromJson(Map<String, dynamic> json) {
  return _InnerTestModel.fromJson(json);
}

/// @nodoc
mixin _$InnerTestModel {
// Class Variables Count: 2
//String?
  String? get name => throw _privateConstructorUsedError; //String?
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this InnerTestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InnerTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InnerTestModelCopyWith<InnerTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerTestModelCopyWith<$Res> {
  factory $InnerTestModelCopyWith(
          InnerTestModel value, $Res Function(InnerTestModel) then) =
      _$InnerTestModelCopyWithImpl<$Res, InnerTestModel>;
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class _$InnerTestModelCopyWithImpl<$Res, $Val extends InnerTestModel>
    implements $InnerTestModelCopyWith<$Res> {
  _$InnerTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InnerTestModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$InnerTestModelImplCopyWith<$Res>
    implements $InnerTestModelCopyWith<$Res> {
  factory _$$InnerTestModelImplCopyWith(_$InnerTestModelImpl value,
          $Res Function(_$InnerTestModelImpl) then) =
      __$$InnerTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class __$$InnerTestModelImplCopyWithImpl<$Res>
    extends _$InnerTestModelCopyWithImpl<$Res, _$InnerTestModelImpl>
    implements _$$InnerTestModelImplCopyWith<$Res> {
  __$$InnerTestModelImplCopyWithImpl(
      _$InnerTestModelImpl _value, $Res Function(_$InnerTestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InnerTestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$InnerTestModelImpl(
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
class _$InnerTestModelImpl implements _InnerTestModel {
  const _$InnerTestModelImpl({this.name, this.description});

  factory _$InnerTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerTestModelImplFromJson(json);

// Class Variables Count: 2
//String?
  @override
  final String? name;
//String?
  @override
  final String? description;

  @override
  String toString() {
    return 'InnerTestModel(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerTestModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of InnerTestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerTestModelImplCopyWith<_$InnerTestModelImpl> get copyWith =>
      __$$InnerTestModelImplCopyWithImpl<_$InnerTestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerTestModelImplToJson(
      this,
    );
  }
}

abstract class _InnerTestModel implements InnerTestModel {
  const factory _InnerTestModel(
      {final String? name, final String? description}) = _$InnerTestModelImpl;

  factory _InnerTestModel.fromJson(Map<String, dynamic> json) =
      _$InnerTestModelImpl.fromJson;

// Class Variables Count: 2
//String?
  @override
  String? get name; //String?
  @override
  String? get description;

  /// Create a copy of InnerTestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InnerTestModelImplCopyWith<_$InnerTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InnerTestEntity {
// Class Variables Count: 2
//String?
  String? get name => throw _privateConstructorUsedError; //String?
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of InnerTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InnerTestEntityCopyWith<InnerTestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerTestEntityCopyWith<$Res> {
  factory $InnerTestEntityCopyWith(
          InnerTestEntity value, $Res Function(InnerTestEntity) then) =
      _$InnerTestEntityCopyWithImpl<$Res, InnerTestEntity>;
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class _$InnerTestEntityCopyWithImpl<$Res, $Val extends InnerTestEntity>
    implements $InnerTestEntityCopyWith<$Res> {
  _$InnerTestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InnerTestEntity
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$InnerTestEntityImplCopyWith<$Res>
    implements $InnerTestEntityCopyWith<$Res> {
  factory _$$InnerTestEntityImplCopyWith(_$InnerTestEntityImpl value,
          $Res Function(_$InnerTestEntityImpl) then) =
      __$$InnerTestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class __$$InnerTestEntityImplCopyWithImpl<$Res>
    extends _$InnerTestEntityCopyWithImpl<$Res, _$InnerTestEntityImpl>
    implements _$$InnerTestEntityImplCopyWith<$Res> {
  __$$InnerTestEntityImplCopyWithImpl(
      _$InnerTestEntityImpl _value, $Res Function(_$InnerTestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InnerTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$InnerTestEntityImpl(
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

class _$InnerTestEntityImpl implements _InnerTestEntity {
  const _$InnerTestEntityImpl({this.name, this.description});

// Class Variables Count: 2
//String?
  @override
  final String? name;
//String?
  @override
  final String? description;

  @override
  String toString() {
    return 'InnerTestEntity(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerTestEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of InnerTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerTestEntityImplCopyWith<_$InnerTestEntityImpl> get copyWith =>
      __$$InnerTestEntityImplCopyWithImpl<_$InnerTestEntityImpl>(
          this, _$identity);
}

abstract class _InnerTestEntity implements InnerTestEntity {
  const factory _InnerTestEntity(
      {final String? name, final String? description}) = _$InnerTestEntityImpl;

// Class Variables Count: 2
//String?
  @override
  String? get name; //String?
  @override
  String? get description;

  /// Create a copy of InnerTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InnerTestEntityImplCopyWith<_$InnerTestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
