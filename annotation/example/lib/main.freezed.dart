// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InnerSampleModel {
  String? get name;
  String? get description;

  /// Create a copy of InnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InnerSampleModelCopyWith<InnerSampleModel> get copyWith =>
      _$InnerSampleModelCopyWithImpl<InnerSampleModel>(
          this as InnerSampleModel, _$identity);

  /// Serializes this InnerSampleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InnerSampleModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'InnerSampleModel(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class $InnerSampleModelCopyWith<$Res> {
  factory $InnerSampleModelCopyWith(
          InnerSampleModel value, $Res Function(InnerSampleModel) _then) =
      _$InnerSampleModelCopyWithImpl;
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class _$InnerSampleModelCopyWithImpl<$Res>
    implements $InnerSampleModelCopyWith<$Res> {
  _$InnerSampleModelCopyWithImpl(this._self, this._then);

  final InnerSampleModel _self;
  final $Res Function(InnerSampleModel) _then;

  /// Create a copy of InnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InnerSampleModel implements InnerSampleModel {
  const _InnerSampleModel({this.name, this.description});
  factory _InnerSampleModel.fromJson(Map<String, dynamic> json) =>
      _$InnerSampleModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;

  /// Create a copy of InnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InnerSampleModelCopyWith<_InnerSampleModel> get copyWith =>
      __$InnerSampleModelCopyWithImpl<_InnerSampleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InnerSampleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InnerSampleModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'InnerSampleModel(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$InnerSampleModelCopyWith<$Res>
    implements $InnerSampleModelCopyWith<$Res> {
  factory _$InnerSampleModelCopyWith(
          _InnerSampleModel value, $Res Function(_InnerSampleModel) _then) =
      __$InnerSampleModelCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class __$InnerSampleModelCopyWithImpl<$Res>
    implements _$InnerSampleModelCopyWith<$Res> {
  __$InnerSampleModelCopyWithImpl(this._self, this._then);

  final _InnerSampleModel _self;
  final $Res Function(_InnerSampleModel) _then;

  /// Create a copy of InnerSampleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_InnerSampleModel(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$InnerSampleEntity {
  String? get name;
  String? get description;

  /// Create a copy of InnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InnerSampleEntityCopyWith<InnerSampleEntity> get copyWith =>
      _$InnerSampleEntityCopyWithImpl<InnerSampleEntity>(
          this as InnerSampleEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InnerSampleEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'InnerSampleEntity(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class $InnerSampleEntityCopyWith<$Res> {
  factory $InnerSampleEntityCopyWith(
          InnerSampleEntity value, $Res Function(InnerSampleEntity) _then) =
      _$InnerSampleEntityCopyWithImpl;
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class _$InnerSampleEntityCopyWithImpl<$Res>
    implements $InnerSampleEntityCopyWith<$Res> {
  _$InnerSampleEntityCopyWithImpl(this._self, this._then);

  final InnerSampleEntity _self;
  final $Res Function(InnerSampleEntity) _then;

  /// Create a copy of InnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _InnerSampleEntity implements InnerSampleEntity {
  const _InnerSampleEntity({this.name, this.description});

  @override
  final String? name;
  @override
  final String? description;

  /// Create a copy of InnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InnerSampleEntityCopyWith<_InnerSampleEntity> get copyWith =>
      __$InnerSampleEntityCopyWithImpl<_InnerSampleEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InnerSampleEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'InnerSampleEntity(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$InnerSampleEntityCopyWith<$Res>
    implements $InnerSampleEntityCopyWith<$Res> {
  factory _$InnerSampleEntityCopyWith(
          _InnerSampleEntity value, $Res Function(_InnerSampleEntity) _then) =
      __$InnerSampleEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class __$InnerSampleEntityCopyWithImpl<$Res>
    implements _$InnerSampleEntityCopyWith<$Res> {
  __$InnerSampleEntityCopyWithImpl(this._self, this._then);

  final _InnerSampleEntity _self;
  final $Res Function(_InnerSampleEntity) _then;

  /// Create a copy of InnerSampleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_InnerSampleEntity(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
