import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_restor_app/core/error/failures.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>?> call(Params param);
}

class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
