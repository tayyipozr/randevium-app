import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginate_model.freezed.dart';
part 'paginate_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class PaginateModel<T> with _$PaginateModel<T> {
  const factory PaginateModel(
    List<T>? items,
    int? index,
    int? size,
    int? count,
    int? pages,
    bool? hasPrevious,
    bool? hasNext
    ) = _PaginateModel;

  factory PaginateModel.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$PaginateModelFromJson(json, fromJsonT);
}