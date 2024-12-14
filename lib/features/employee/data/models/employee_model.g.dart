// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeModelImpl _$$EmployeeModelImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeModelImpl(
      json['description'] as String?,
      (json['companyId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EmployeeModelImplToJson(_$EmployeeModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'companyId': instance.companyId,
    };
