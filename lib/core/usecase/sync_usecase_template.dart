
import 'package:dartz/dartz.dart';
import 'package:songmaker/core/usecase/usecase_template.dart';

abstract class SyncUsecase<L,R,P> extends Usecase<L,R,P> {

  Either<L,R> call(P p);

}