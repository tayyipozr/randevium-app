// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginateModelImpl<T> _$$PaginateModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginateModelImpl<T>(
      (json['items'] as List<dynamic>?)?.map(fromJsonT).toList(),
      (json['index'] as num?)?.toInt(),
      (json['size'] as num?)?.toInt(),
      (json['count'] as num?)?.toInt(),
      (json['pages'] as num?)?.toInt(),
      json['hasPrevious'] as bool?,
      json['hasNext'] as bool?,
    );

Map<String, dynamic> _$$PaginateModelImplToJson<T>(
  _$PaginateModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items?.map(toJsonT).toList(),
      'index': instance.index,
      'size': instance.size,
      'count': instance.count,
      'pages': instance.pages,
      'hasPrevious': instance.hasPrevious,
      'hasNext': instance.hasNext,
    };
