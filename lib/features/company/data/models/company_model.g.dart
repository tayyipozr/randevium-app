// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      json['name'] as String?,
      json['address'] as String?,
      json['city'] as String?,
      json['region'] as String?,
      json['phone'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'region': instance.region,
      'phone': instance.phone,
      'description': instance.description,
    };
