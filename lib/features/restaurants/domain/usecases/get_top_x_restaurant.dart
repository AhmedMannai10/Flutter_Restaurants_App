import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_restor_app/features/restaurants/domain/entities/Restaurant.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase.dart';
import '../repositories/restaurant_repository.dart';

class GetTopXRestaurant extends Usecase<List<Restaurant>, Params> {
  final RestaurantRepository repository;

  GetTopXRestaurant(this.repository);

  Future<Either<Failure, List<Restaurant>>?> call(Params) async {
    return await repository.getTopXRestaurants(Params.number);
  }
}

class Params extends Equatable {
  int number;

  Params({required this.number});

  @override
  List<Object?> get props => [number];
}
