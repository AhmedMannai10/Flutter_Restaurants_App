import 'package:flutter_restor_app/core/platform/network_info.dart';
import 'package:flutter_restor_app/features/restaurants/data/datasources/restaurants_remote_datasource.dart';

import '../models/restaurantModel.dart';

abstract class RestaurantLocalDataSource {
  final RestaurantRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RestaurantLocalDataSource(
      {required this.remoteDataSource, required this.networkInfo});

  Future<RestaurantModel> getLastRestaurant();

  Future<void> cacheRestaurants(RestaurantModel restaurantModel);
}
