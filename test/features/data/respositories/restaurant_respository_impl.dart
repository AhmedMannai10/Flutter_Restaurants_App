import 'package:dartz/dartz.dart';
import 'package:flutter_restor_app/core/error/failures.dart';
import 'package:flutter_restor_app/features/restaurants/domain/entities/Restaurant.dart';
import 'package:flutter_restor_app/features/restaurants/domain/repositories/restaurant_repository.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  @override
  Future<Either<Failure, List<Restaurant>>>? getAllRestaurants() {
    // TODO: implement getAllRestaurants
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Restaurant>>>? getTopXRestaurants(
      int? numberOfRestaurantReturned) {
    // TODO: implement getTopXRestaurants
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Restaurant>> getRestaurantById(int? restaurantId) {
    // TODO: implement getRestaurantById
    throw UnimplementedError();
  }
}
