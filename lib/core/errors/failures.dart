import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

abstract class Failure {
  final errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Problem With Your Connection');
      case DioErrorType.sendTimeout:
        return ServerFailure('Problem With Sending, Try again');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Problem With Recieving, Try again');
      case DioErrorType.badCertificate:
        return ServerFailure('Problem With Certificate');
      case DioErrorType.badResponse:
        return ServerFailure('Please Try again');
      case DioErrorType.cancel:
        return ServerFailure('Cancelition Occured');
      case DioErrorType.connectionError:
        return ServerFailure('Problem With Your Connection');
      case DioErrorType.unknown:
        return ServerFailure('Please Try again');
      default:
        return ServerFailure('Please Try again');
    }
  }
}
