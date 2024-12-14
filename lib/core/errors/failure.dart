import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const Failure._();
  const factory Failure() = _Failure;
}

class ServerFailure implements Failure {
  String? message;
  String? detailedMessage;

  ServerFailure();
  ServerFailure.withMessage(Response<dynamic>? response) {
    message = response?.statusMessage;
    detailedMessage = response?.statusMessage;
  }
}

class CacheFailure implements Failure {}
