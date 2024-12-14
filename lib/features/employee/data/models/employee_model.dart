import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randevium_app/features/employee/domain/entites/employee.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class EmployeeModel with _$EmployeeModel implements Employee {
  const factory EmployeeModel(
    String? description,
    int? companyId
    ) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);
}