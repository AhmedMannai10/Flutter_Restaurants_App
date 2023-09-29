import 'package:dartz/dartz.dart';
import 'package:flutter_restor_app/core/error/failures.dart';
import 'package:flutter_restor_app/core/platform/network_info.dart';
import 'package:flutter_restor_app/features/restaurants/domain/entities/Restaurant.dart';
import 'package:flutter_restor_app/features/restaurants/domain/repositories/restaurant_repository.dart';

import '../../../../core/error/exceptions.dart';
import '../datasources/restaurants_remote_datasource.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  final RestaurantRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RestaurantRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, List<Restaurant>>>? getAllRestaurants() async {
    try {
      final remoteRestaurant = await remoteDataSource.getAllRestaurants();
      return Right(remoteRestaurant!);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Restaurant>> getRestaurantById(int? restaurantId) {
    // TODO: implement getRestaurantById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Restaurant>>>? getTopXRestaurants(
      int? numberOfRestaurantReturned) {
    // TODO: implement getTopXRestaurants
    throw UnimplementedError();
  }
}
