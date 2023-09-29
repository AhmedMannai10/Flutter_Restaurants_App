import 'package:dartz/dartz.dart';
import 'package:flutter_restor_app/features/restaurants/domain/entities/Restaurant.dart';

import '../../../../core/error/failures.dart';

abstract class RestaurantRepository {
  Future<Either<Failure, List<Restaurant>>>? getTopXRestaurants(
      int? numberOfRestaurantReturned);

  Future<Either<Failure, List<Restaurant>>>? getAllRestaurants();

  Future<Either<Failure, Restaurant>> getRestaurantById(int? restaurantId);
}
