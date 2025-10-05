// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [InnerSampleModel].
extension InnerSampleModelPatterns on InnerSampleModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InnerSampleModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InnerSampleModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InnerSampleModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InnerSampleModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InnerSampleModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InnerSampleModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? description)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InnerSampleModel() when $default != null:
        return $default(_that.name, _that.description);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? description) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InnerSampleModel():
        return $default(_that.name, _that.description);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? description)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InnerSampleModel() when $default != null:
        return $default(_that.name, _that.description);
      case _:
        return null;
    }
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

/// Adds pattern-matching-related methods to [InnerSampleEntity].
extension InnerSampleEntityPatterns on InnerSampleEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InnerSampleEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InnerSampleEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InnerSampleEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InnerSampleEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InnerSampleEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InnerSampleEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? description)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InnerSampleEntity() when $default != null:
        return $default(_that.name, _that.description);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? description) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InnerSampleEntity():
        return $default(_that.name, _that.description);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? description)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InnerSampleEntity() when $default != null:
        return $default(_that.name, _that.description);
      case _:
        return null;
    }
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

/// @nodoc
mixin _$SampleMEMModelFreezedModel {
  String? get name;
  String? get description;
  List<String>? get sampleList;

  /// Create a copy of SampleMEMModelFreezedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SampleMEMModelFreezedModelCopyWith<SampleMEMModelFreezedModel>
      get copyWith =>
          _$SampleMEMModelFreezedModelCopyWithImpl<SampleMEMModelFreezedModel>(
              this as SampleMEMModelFreezedModel, _$identity);

  /// Serializes this SampleMEMModelFreezedModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SampleMEMModelFreezedModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.sampleList, sampleList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(sampleList));

  @override
  String toString() {
    return 'SampleMEMModelFreezedModel(name: $name, description: $description, sampleList: $sampleList)';
  }
}

/// @nodoc
abstract mixin class $SampleMEMModelFreezedModelCopyWith<$Res> {
  factory $SampleMEMModelFreezedModelCopyWith(SampleMEMModelFreezedModel value,
          $Res Function(SampleMEMModelFreezedModel) _then) =
      _$SampleMEMModelFreezedModelCopyWithImpl;
  @useResult
  $Res call({String? name, String? description, List<String>? sampleList});
}

/// @nodoc
class _$SampleMEMModelFreezedModelCopyWithImpl<$Res>
    implements $SampleMEMModelFreezedModelCopyWith<$Res> {
  _$SampleMEMModelFreezedModelCopyWithImpl(this._self, this._then);

  final SampleMEMModelFreezedModel _self;
  final $Res Function(SampleMEMModelFreezedModel) _then;

  /// Create a copy of SampleMEMModelFreezedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? sampleList = freezed,
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
      sampleList: freezed == sampleList
          ? _self.sampleList
          : sampleList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SampleMEMModelFreezedModel].
extension SampleMEMModelFreezedModelPatterns on SampleMEMModelFreezedModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SampleMEMModelFreezedModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleMEMModelFreezedModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SampleMEMModelFreezedModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleMEMModelFreezedModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SampleMEMModelFreezedModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleMEMModelFreezedModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? name, String? description, List<String>? sampleList)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleMEMModelFreezedModel() when $default != null:
        return $default(_that.name, _that.description, _that.sampleList);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? name, String? description, List<String>? sampleList)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleMEMModelFreezedModel():
        return $default(_that.name, _that.description, _that.sampleList);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? name, String? description, List<String>? sampleList)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleMEMModelFreezedModel() when $default != null:
        return $default(_that.name, _that.description, _that.sampleList);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SampleMEMModelFreezedModel implements SampleMEMModelFreezedModel {
  const _SampleMEMModelFreezedModel(
      {this.name, this.description, final List<String>? sampleList})
      : _sampleList = sampleList;
  factory _SampleMEMModelFreezedModel.fromJson(Map<String, dynamic> json) =>
      _$SampleMEMModelFreezedModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  final List<String>? _sampleList;
  @override
  List<String>? get sampleList {
    final value = _sampleList;
    if (value == null) return null;
    if (_sampleList is EqualUnmodifiableListView) return _sampleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SampleMEMModelFreezedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SampleMEMModelFreezedModelCopyWith<_SampleMEMModelFreezedModel>
      get copyWith => __$SampleMEMModelFreezedModelCopyWithImpl<
          _SampleMEMModelFreezedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SampleMEMModelFreezedModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleMEMModelFreezedModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._sampleList, _sampleList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_sampleList));

  @override
  String toString() {
    return 'SampleMEMModelFreezedModel(name: $name, description: $description, sampleList: $sampleList)';
  }
}

/// @nodoc
abstract mixin class _$SampleMEMModelFreezedModelCopyWith<$Res>
    implements $SampleMEMModelFreezedModelCopyWith<$Res> {
  factory _$SampleMEMModelFreezedModelCopyWith(
          _SampleMEMModelFreezedModel value,
          $Res Function(_SampleMEMModelFreezedModel) _then) =
      __$SampleMEMModelFreezedModelCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? description, List<String>? sampleList});
}

/// @nodoc
class __$SampleMEMModelFreezedModelCopyWithImpl<$Res>
    implements _$SampleMEMModelFreezedModelCopyWith<$Res> {
  __$SampleMEMModelFreezedModelCopyWithImpl(this._self, this._then);

  final _SampleMEMModelFreezedModel _self;
  final $Res Function(_SampleMEMModelFreezedModel) _then;

  /// Create a copy of SampleMEMModelFreezedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? sampleList = freezed,
  }) {
    return _then(_SampleMEMModelFreezedModel(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sampleList: freezed == sampleList
          ? _self._sampleList
          : sampleList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
mixin _$SampleMEMEntityFreezedEntity {
  String? get name;
  String? get description;
  List<String>? get sampleList;

  /// Create a copy of SampleMEMEntityFreezedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SampleMEMEntityFreezedEntityCopyWith<SampleMEMEntityFreezedEntity>
      get copyWith => _$SampleMEMEntityFreezedEntityCopyWithImpl<
              SampleMEMEntityFreezedEntity>(
          this as SampleMEMEntityFreezedEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SampleMEMEntityFreezedEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.sampleList, sampleList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(sampleList));

  @override
  String toString() {
    return 'SampleMEMEntityFreezedEntity(name: $name, description: $description, sampleList: $sampleList)';
  }
}

/// @nodoc
abstract mixin class $SampleMEMEntityFreezedEntityCopyWith<$Res> {
  factory $SampleMEMEntityFreezedEntityCopyWith(
          SampleMEMEntityFreezedEntity value,
          $Res Function(SampleMEMEntityFreezedEntity) _then) =
      _$SampleMEMEntityFreezedEntityCopyWithImpl;
  @useResult
  $Res call({String? name, String? description, List<String>? sampleList});
}

/// @nodoc
class _$SampleMEMEntityFreezedEntityCopyWithImpl<$Res>
    implements $SampleMEMEntityFreezedEntityCopyWith<$Res> {
  _$SampleMEMEntityFreezedEntityCopyWithImpl(this._self, this._then);

  final SampleMEMEntityFreezedEntity _self;
  final $Res Function(SampleMEMEntityFreezedEntity) _then;

  /// Create a copy of SampleMEMEntityFreezedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? sampleList = freezed,
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
      sampleList: freezed == sampleList
          ? _self.sampleList
          : sampleList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SampleMEMEntityFreezedEntity].
extension SampleMEMEntityFreezedEntityPatterns on SampleMEMEntityFreezedEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SampleMEMEntityFreezedEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleMEMEntityFreezedEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SampleMEMEntityFreezedEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleMEMEntityFreezedEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SampleMEMEntityFreezedEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleMEMEntityFreezedEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? name, String? description, List<String>? sampleList)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleMEMEntityFreezedEntity() when $default != null:
        return $default(_that.name, _that.description, _that.sampleList);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? name, String? description, List<String>? sampleList)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleMEMEntityFreezedEntity():
        return $default(_that.name, _that.description, _that.sampleList);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? name, String? description, List<String>? sampleList)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleMEMEntityFreezedEntity() when $default != null:
        return $default(_that.name, _that.description, _that.sampleList);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SampleMEMEntityFreezedEntity implements SampleMEMEntityFreezedEntity {
  const _SampleMEMEntityFreezedEntity(
      {this.name, this.description, final List<String>? sampleList})
      : _sampleList = sampleList;

  @override
  final String? name;
  @override
  final String? description;
  final List<String>? _sampleList;
  @override
  List<String>? get sampleList {
    final value = _sampleList;
    if (value == null) return null;
    if (_sampleList is EqualUnmodifiableListView) return _sampleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SampleMEMEntityFreezedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SampleMEMEntityFreezedEntityCopyWith<_SampleMEMEntityFreezedEntity>
      get copyWith => __$SampleMEMEntityFreezedEntityCopyWithImpl<
          _SampleMEMEntityFreezedEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleMEMEntityFreezedEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._sampleList, _sampleList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_sampleList));

  @override
  String toString() {
    return 'SampleMEMEntityFreezedEntity(name: $name, description: $description, sampleList: $sampleList)';
  }
}

/// @nodoc
abstract mixin class _$SampleMEMEntityFreezedEntityCopyWith<$Res>
    implements $SampleMEMEntityFreezedEntityCopyWith<$Res> {
  factory _$SampleMEMEntityFreezedEntityCopyWith(
          _SampleMEMEntityFreezedEntity value,
          $Res Function(_SampleMEMEntityFreezedEntity) _then) =
      __$SampleMEMEntityFreezedEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? description, List<String>? sampleList});
}

/// @nodoc
class __$SampleMEMEntityFreezedEntityCopyWithImpl<$Res>
    implements _$SampleMEMEntityFreezedEntityCopyWith<$Res> {
  __$SampleMEMEntityFreezedEntityCopyWithImpl(this._self, this._then);

  final _SampleMEMEntityFreezedEntity _self;
  final $Res Function(_SampleMEMEntityFreezedEntity) _then;

  /// Create a copy of SampleMEMEntityFreezedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? sampleList = freezed,
  }) {
    return _then(_SampleMEMEntityFreezedEntity(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sampleList: freezed == sampleList
          ? _self._sampleList
          : sampleList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
