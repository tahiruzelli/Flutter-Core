import 'package:dartz/dartz.dart';
import 'package:songmaker/core/usecase/usecase_template.dart';

abstract class AsyncUsecase<L, R, P> extends Usecase<L, R, P> {
  Future<Either<L, R>> call(P p);
}
