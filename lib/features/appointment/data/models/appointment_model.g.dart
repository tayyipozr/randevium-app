// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentModelImpl _$$AppointmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentModelImpl(
      (json['id'] as num?)?.toInt(),
      json['createdTime'] == null
          ? null
          : DateTime.parse(json['createdTime'] as String),
      json['updatedTime'] == null
          ? null
          : DateTime.parse(json['updatedTime'] as String),
      json['appointmentDateTime'] == null
          ? null
          : DateTime.parse(json['appointmentDateTime'] as String),
      (json['appointmentStatus'] as num?)?.toInt(),
      (json['companyId'] as num?)?.toInt(),
      json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppointmentModelImplToJson(
        _$AppointmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdTime': instance.createdTime?.toIso8601String(),
      'updatedTime': instance.updatedTime?.toIso8601String(),
      'appointmentDateTime': instance.appointmentDateTime?.toIso8601String(),
      'appointmentStatus': instance.appointmentStatus,
      'companyId': instance.companyId,
      'company': instance.company,
    };
