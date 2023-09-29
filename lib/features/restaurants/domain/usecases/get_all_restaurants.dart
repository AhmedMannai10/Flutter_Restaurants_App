import 'package:dartz/dartz.dart';
import 'package:flutter_restor_app/core/usecase.dart';
import 'package:flutter_restor_app/features/restaurants/domain/entities/Restaurant.dart';

import '../../../../core/error/failures.dart';
import '../repositories/restaurant_repository.dart';

class GetAllRestaurants extends Usecase<List<Restaurant>, NoParams> {
  final RestaurantRepository repository;

  GetAllRestaurants({required this.repository});

  Future<Either<Failure, List<Restaurant>>?> call(NoParams params) async {
    // calling api for all the restaurants
    final result = await repository.getAllRestaurants();

    return result;
  }
}
