// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      json['name'] as String?,
      json['description'] as String?,
      (json['cost'] as num?)?.toInt(),
      (json['companyId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'cost': instance.cost,
      'companyId': instance.companyId,
    };
