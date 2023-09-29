import '../../domain/entities/Restaurant.dart';

abstract class RestaurantRemoteDataSource {
  Future<List<Restaurant>>? getAllRestaurants() {
    // TODO: implement getAllRestaurants
    throw UnimplementedError();
  }

  @override
  Future<List<Restaurant>>? getTopXRestaurants(
      int? numberOfRestaurantReturned) {
    // TODO: implement getTopXRestaurants
    throw UnimplementedError();
  }
}
