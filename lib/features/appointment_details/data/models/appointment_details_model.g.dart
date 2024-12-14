// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentDetailsModelImpl _$$AppointmentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentDetailsModelImpl(
      (json['appointmentId'] as num?)?.toInt(),
      (json['serviceId'] as num?)?.toInt(),
      (json['employeeId'] as num?)?.toInt(),
      (json['price'] as num?)?.toInt(),
      (json['duration'] as num?)?.toInt(),
      json['service'] == null
          ? null
          : ServiceModel.fromJson(json['service'] as Map<String, dynamic>),
      json['employee'] == null
          ? null
          : EmployeeModel.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppointmentDetailsModelImplToJson(
        _$AppointmentDetailsModelImpl instance) =>
    <String, dynamic>{
      'appointmentId': instance.appointmentId,
      'serviceId': instance.serviceId,
      'employeeId': instance.employeeId,
      'price': instance.price,
      'duration': instance.duration,
      'service': instance.service,
      'employee': instance.employee,
    };
