import 'package:songmaker/core/errors/failure/failure.dart';

abstract class ServerFailure extends Failure{
  final int code;
  final String error;

  const ServerFailure(this.code, this.error) : super(error);
}