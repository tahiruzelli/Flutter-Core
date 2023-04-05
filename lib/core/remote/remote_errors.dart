
import 'package:dio/dio.dart';



class BadRequestException extends DioError {
  BadRequestException(RequestOptions r, {err}) : super(requestOptions: r, response: err);

  @override
  String toString() {
    return response?.data['message'] ?? 'Invalid request';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r, {err}) : super(requestOptions: r, response: err);

  @override
  String toString() {
    return response?.data['message'] ?? 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r, {err}) : super(requestOptions: r, response: err);

  @override
  String toString() {
    return response?.data['message'] ?? 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r, {err}) : super(requestOptions: r, response: err);

  @override
  String toString() {
    return response?.data['message'] ?? 'Access denied';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r, {err}) : super(requestOptions: r, response: err);

  @override
  String toString() {
    return response?.data['message'] ?? 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r, {err}) : super(requestOptions: r, response: err);

  @override
  String toString() {
    return response?.data['message'] ?? 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r, {err}) : super(requestOptions: r, response: err);

  @override
  String toString() {
    return response?.data['message'] ?? 'The connection has timed out, please try again.';
  }
}