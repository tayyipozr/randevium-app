import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/company/domain/entities/company.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
abstract class CompanyModel with _$CompanyModel implements Company {
  const factory CompanyModel(
    String? name,
    String? address,
    String? city,
    String? region,
    String? phone,
    String? description,
  ) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);
}
