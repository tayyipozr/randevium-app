// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) {
  return _AppointmentModel.fromJson(json);
}

/// @nodoc
mixin _$AppointmentModel {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get createdTime => throw _privateConstructorUsedError;
  DateTime? get updatedTime => throw _privateConstructorUsedError;
  DateTime? get appointmentDateTime => throw _privateConstructorUsedError;
  int? get appointmentStatus => throw _privateConstructorUsedError;
  int? get companyId => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentModelCopyWith<AppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentModelCopyWith<$Res> {
  factory $AppointmentModelCopyWith(
          AppointmentModel value, $Res Function(AppointmentModel) then) =
      _$AppointmentModelCopyWithImpl<$Res, AppointmentModel>;
  @useResult
  $Res call(
      {int? id,
      DateTime? createdTime,
      DateTime? updatedTime,
      DateTime? appointmentDateTime,
      int? appointmentStatus,
      int? companyId,
      CompanyModel? company});

  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res, $Val extends AppointmentModel>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdTime = freezed,
    Object? updatedTime = freezed,
    Object? appointmentDateTime = freezed,
    Object? appointmentStatus = freezed,
    Object? companyId = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedTime: freezed == updatedTime
          ? _value.updatedTime
          : updatedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentDateTime: freezed == appointmentDateTime
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentStatus: freezed == appointmentStatus
          ? _value.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
    ) as $Val);
  }

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyModelCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentModelImplCopyWith<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  factory _$$AppointmentModelImplCopyWith(_$AppointmentModelImpl value,
          $Res Function(_$AppointmentModelImpl) then) =
      __$$AppointmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? createdTime,
      DateTime? updatedTime,
      DateTime? appointmentDateTime,
      int? appointmentStatus,
      int? companyId,
      CompanyModel? company});

  @override
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class __$$AppointmentModelImplCopyWithImpl<$Res>
    extends _$AppointmentModelCopyWithImpl<$Res, _$AppointmentModelImpl>
    implements _$$AppointmentModelImplCopyWith<$Res> {
  __$$AppointmentModelImplCopyWithImpl(_$AppointmentModelImpl _value,
      $Res Function(_$AppointmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdTime = freezed,
    Object? updatedTime = freezed,
    Object? appointmentDateTime = freezed,
    Object? appointmentStatus = freezed,
    Object? companyId = freezed,
    Object? company = freezed,
  }) {
    return _then(_$AppointmentModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == updatedTime
          ? _value.updatedTime
          : updatedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == appointmentDateTime
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == appointmentStatus
          ? _value.appointmentStatus
          : appointmentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentModelImpl implements _AppointmentModel {
  const _$AppointmentModelImpl(
      this.id,
      this.createdTime,
      this.updatedTime,
      this.appointmentDateTime,
      this.appointmentStatus,
      this.companyId,
      this.company);

  factory _$AppointmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentModelImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? createdTime;
  @override
  final DateTime? updatedTime;
  @override
  final DateTime? appointmentDateTime;
  @override
  final int? appointmentStatus;
  @override
  final int? companyId;
  @override
  final CompanyModel? company;

  @override
  String toString() {
    return 'AppointmentModel(id: $id, createdTime: $createdTime, updatedTime: $updatedTime, appointmentDateTime: $appointmentDateTime, appointmentStatus: $appointmentStatus, companyId: $companyId, company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.updatedTime, updatedTime) ||
                other.updatedTime == updatedTime) &&
            (identical(other.appointmentDateTime, appointmentDateTime) ||
                other.appointmentDateTime == appointmentDateTime) &&
            (identical(other.appointmentStatus, appointmentStatus) ||
                other.appointmentStatus == appointmentStatus) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdTime, updatedTime,
      appointmentDateTime, appointmentStatus, companyId, company);

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentModelImplCopyWith<_$AppointmentModelImpl> get copyWith =>
      __$$AppointmentModelImplCopyWithImpl<_$AppointmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentModelImplToJson(
      this,
    );
  }
}

abstract class _AppointmentModel implements AppointmentModel {
  const factory _AppointmentModel(
      final int? id,
      final DateTime? createdTime,
      final DateTime? updatedTime,
      final DateTime? appointmentDateTime,
      final int? appointmentStatus,
      final int? companyId,
      final CompanyModel? company) = _$AppointmentModelImpl;

  factory _AppointmentModel.fromJson(Map<String, dynamic> json) =
      _$AppointmentModelImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get createdTime;
  @override
  DateTime? get updatedTime;
  @override
  DateTime? get appointmentDateTime;
  @override
  int? get appointmentStatus;
  @override
  int? get companyId;
  @override
  CompanyModel? get company;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentModelImplCopyWith<_$AppointmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
