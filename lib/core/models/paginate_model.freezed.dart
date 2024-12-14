// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginateModel<T> _$PaginateModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginateModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginateModel<T> {
  List<T>? get items => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  bool? get hasPrevious => throw _privateConstructorUsedError;
  bool? get hasNext => throw _privateConstructorUsedError;

  /// Serializes this PaginateModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaginateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginateModelCopyWith<T, PaginateModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginateModelCopyWith<T, $Res> {
  factory $PaginateModelCopyWith(
          PaginateModel<T> value, $Res Function(PaginateModel<T>) then) =
      _$PaginateModelCopyWithImpl<T, $Res, PaginateModel<T>>;
  @useResult
  $Res call(
      {List<T>? items,
      int? index,
      int? size,
      int? count,
      int? pages,
      bool? hasPrevious,
      bool? hasNext});
}

/// @nodoc
class _$PaginateModelCopyWithImpl<T, $Res, $Val extends PaginateModel<T>>
    implements $PaginateModelCopyWith<T, $Res> {
  _$PaginateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? index = freezed,
    Object? size = freezed,
    Object? count = freezed,
    Object? pages = freezed,
    Object? hasPrevious = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasPrevious: freezed == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginateModelImplCopyWith<T, $Res>
    implements $PaginateModelCopyWith<T, $Res> {
  factory _$$PaginateModelImplCopyWith(_$PaginateModelImpl<T> value,
          $Res Function(_$PaginateModelImpl<T>) then) =
      __$$PaginateModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T>? items,
      int? index,
      int? size,
      int? count,
      int? pages,
      bool? hasPrevious,
      bool? hasNext});
}

/// @nodoc
class __$$PaginateModelImplCopyWithImpl<T, $Res>
    extends _$PaginateModelCopyWithImpl<T, $Res, _$PaginateModelImpl<T>>
    implements _$$PaginateModelImplCopyWith<T, $Res> {
  __$$PaginateModelImplCopyWithImpl(_$PaginateModelImpl<T> _value,
      $Res Function(_$PaginateModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? index = freezed,
    Object? size = freezed,
    Object? count = freezed,
    Object? pages = freezed,
    Object? hasPrevious = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_$PaginateModelImpl<T>(
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginateModelImpl<T> implements _PaginateModel<T> {
  const _$PaginateModelImpl(final List<T>? items, this.index, this.size,
      this.count, this.pages, this.hasPrevious, this.hasNext)
      : _items = items;

  factory _$PaginateModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginateModelImplFromJson(json, fromJsonT);

  final List<T>? _items;
  @override
  List<T>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? index;
  @override
  final int? size;
  @override
  final int? count;
  @override
  final int? pages;
  @override
  final bool? hasPrevious;
  @override
  final bool? hasNext;

  @override
  String toString() {
    return 'PaginateModel<$T>(items: $items, index: $index, size: $size, count: $count, pages: $pages, hasPrevious: $hasPrevious, hasNext: $hasNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateModelImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.hasPrevious, hasPrevious) ||
                other.hasPrevious == hasPrevious) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      index,
      size,
      count,
      pages,
      hasPrevious,
      hasNext);

  /// Create a copy of PaginateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateModelImplCopyWith<T, _$PaginateModelImpl<T>> get copyWith =>
      __$$PaginateModelImplCopyWithImpl<T, _$PaginateModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginateModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginateModel<T> implements PaginateModel<T> {
  const factory _PaginateModel(
      final List<T>? items,
      final int? index,
      final int? size,
      final int? count,
      final int? pages,
      final bool? hasPrevious,
      final bool? hasNext) = _$PaginateModelImpl<T>;

  factory _PaginateModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginateModelImpl<T>.fromJson;

  @override
  List<T>? get items;
  @override
  int? get index;
  @override
  int? get size;
  @override
  int? get count;
  @override
  int? get pages;
  @override
  bool? get hasPrevious;
  @override
  bool? get hasNext;

  /// Create a copy of PaginateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginateModelImplCopyWith<T, _$PaginateModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
