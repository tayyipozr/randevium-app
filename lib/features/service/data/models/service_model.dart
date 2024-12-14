import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/service/domain/entities/service.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
abstract class ServiceModel with _$ServiceModel implements Service {
  const factory ServiceModel(
    String? name,
    String? description,
    int? cost,
    int? companyId
    ) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) => _$ServiceModelFromJson(json);
}