import '../../domain/entities/Restaurant.dart';

class RestaurantModel extends Restaurant {
  RestaurantModel({required super.name, required super.location});

  factory RestaurantModel.fromJson(Map<String, dynamic> jsonMap) {
    return RestaurantModel(
        name: jsonMap["name"], location: jsonMap["location"]);
  }
}
