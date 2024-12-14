// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseModelImpl _$$UserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseModelImpl(
      (json['id'] as num).toInt(),
      json['firstName'] as String,
      json['lastName'] as String,
      json['email'] as String,
      json['status'] as bool,
    );

Map<String, dynamic> _$$UserResponseModelImplToJson(
        _$UserResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'status': instance.status,
    };
