import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exceptions.dart';
import '../../domain/entities/Restaurant.dart';
import '../models/restaurantModel.dart';

abstract class RestaurantRemoteDataSource {
  Future<List<Restaurant>>? getAllRestaurants() {}

  @override
  Future<List<Restaurant>>? getTopXRestaurants(
      int? numberOfRestaurantReturned) {
    // TODO: implement getTopXRestaurants
    throw UnimplementedError();
  }
}

class RestaurantRemoteDataSourceImpl extends RestaurantRemoteDataSource {
  final http.Client client;

  RestaurantRemoteDataSourceImpl({required this.client});

  @override
  Future<List<Restaurant>>? getAllRestaurants() async {
    final response = await client.get(Uri.parse('http://localhost:8080/'),
        headers: {"Content-Type": 'application/json'});
    if (response.statusCode == 200) {
      final List<dynamic> jsonRestaurants = json.decode(response.body);
      List<Restaurant> allRestaurants = [];
      for (var aJsonRestaurant in jsonRestaurants) {
        allRestaurants.add(RestaurantModel.fromJson(aJsonRestaurant));
      }
      print(allRestaurants);
      return allRestaurants;
      // return RestaurantModel.fromJson(response);
    } else {
      throw ServerException(message: "Error getting data");
    }
  }
}
