// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentDetailsModel _$AppointmentDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _AppointmentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDetailsModel {
  int? get appointmentId => throw _privateConstructorUsedError;
  int? get serviceId => throw _privateConstructorUsedError;
  int? get employeeId => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  ServiceModel? get service => throw _privateConstructorUsedError;
  EmployeeModel? get employee => throw _privateConstructorUsedError;

  /// Serializes this AppointmentDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentDetailsModelCopyWith<AppointmentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailsModelCopyWith<$Res> {
  factory $AppointmentDetailsModelCopyWith(AppointmentDetailsModel value,
          $Res Function(AppointmentDetailsModel) then) =
      _$AppointmentDetailsModelCopyWithImpl<$Res, AppointmentDetailsModel>;
  @useResult
  $Res call(
      {int? appointmentId,
      int? serviceId,
      int? employeeId,
      int? price,
      int? duration,
      ServiceModel? service,
      EmployeeModel? employee});

  $ServiceModelCopyWith<$Res>? get service;
  $EmployeeModelCopyWith<$Res>? get employee;
}

/// @nodoc
class _$AppointmentDetailsModelCopyWithImpl<$Res,
        $Val extends AppointmentDetailsModel>
    implements $AppointmentDetailsModelCopyWith<$Res> {
  _$AppointmentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = freezed,
    Object? serviceId = freezed,
    Object? employeeId = freezed,
    Object? price = freezed,
    Object? duration = freezed,
    Object? service = freezed,
    Object? employee = freezed,
  }) {
    return _then(_value.copyWith(
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel?,
    ) as $Val);
  }

  /// Create a copy of AppointmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceModelCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeModelCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentDetailsModelImplCopyWith<$Res>
    implements $AppointmentDetailsModelCopyWith<$Res> {
  factory _$$AppointmentDetailsModelImplCopyWith(
          _$AppointmentDetailsModelImpl value,
          $Res Function(_$AppointmentDetailsModelImpl) then) =
      __$$AppointmentDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? appointmentId,
      int? serviceId,
      int? employeeId,
      int? price,
      int? duration,
      ServiceModel? service,
      EmployeeModel? employee});

  @override
  $ServiceModelCopyWith<$Res>? get service;
  @override
  $EmployeeModelCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$AppointmentDetailsModelImplCopyWithImpl<$Res>
    extends _$AppointmentDetailsModelCopyWithImpl<$Res,
        _$AppointmentDetailsModelImpl>
    implements _$$AppointmentDetailsModelImplCopyWith<$Res> {
  __$$AppointmentDetailsModelImplCopyWithImpl(
      _$AppointmentDetailsModelImpl _value,
      $Res Function(_$AppointmentDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = freezed,
    Object? serviceId = freezed,
    Object? employeeId = freezed,
    Object? price = freezed,
    Object? duration = freezed,
    Object? service = freezed,
    Object? employee = freezed,
  }) {
    return _then(_$AppointmentDetailsModelImpl(
      freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentDetailsModelImpl implements _AppointmentDetailsModel {
  const _$AppointmentDetailsModelImpl(this.appointmentId, this.serviceId,
      this.employeeId, this.price, this.duration, this.service, this.employee);

  factory _$AppointmentDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentDetailsModelImplFromJson(json);

  @override
  final int? appointmentId;
  @override
  final int? serviceId;
  @override
  final int? employeeId;
  @override
  final int? price;
  @override
  final int? duration;
  @override
  final ServiceModel? service;
  @override
  final EmployeeModel? employee;

  @override
  String toString() {
    return 'AppointmentDetailsModel(appointmentId: $appointmentId, serviceId: $serviceId, employeeId: $employeeId, price: $price, duration: $duration, service: $service, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDetailsModelImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appointmentId, serviceId,
      employeeId, price, duration, service, employee);

  /// Create a copy of AppointmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDetailsModelImplCopyWith<_$AppointmentDetailsModelImpl>
      get copyWith => __$$AppointmentDetailsModelImplCopyWithImpl<
          _$AppointmentDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDetailsModel implements AppointmentDetailsModel {
  const factory _AppointmentDetailsModel(
      final int? appointmentId,
      final int? serviceId,
      final int? employeeId,
      final int? price,
      final int? duration,
      final ServiceModel? service,
      final EmployeeModel? employee) = _$AppointmentDetailsModelImpl;

  factory _AppointmentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AppointmentDetailsModelImpl.fromJson;

  @override
  int? get appointmentId;
  @override
  int? get serviceId;
  @override
  int? get employeeId;
  @override
  int? get price;
  @override
  int? get duration;
  @override
  ServiceModel? get service;
  @override
  EmployeeModel? get employee;

  /// Create a copy of AppointmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentDetailsModelImplCopyWith<_$AppointmentDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
