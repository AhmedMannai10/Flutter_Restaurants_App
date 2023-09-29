import 'dart:convert';

import 'package:flutter_restor_app/features/restaurants/data/models/restaurantModel.dart';
import 'package:flutter_restor_app/features/restaurants/domain/entities/Restaurant.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixtures_reader.dart';

void main() {
  final tRestaurantModel =
      RestaurantModel(name: "Mamasita Tacos", location: "Mexico");
  test("Should be a subclass of Restaurant Class", () async {
    // assert
    expect(tRestaurantModel, isA<Restaurant>());
  });
  group("from Json", () {
    test("Should return a valid Restaurant Model", () async {
      // arrang
      final List<dynamic> listRestaurants =
          json.decode(fixture("restaurants.json"));
      final jsonRestaurant = json.decode(json.encode(listRestaurants[0]));
      // act
      final resultRestaurant = RestaurantModel.fromJson(jsonRestaurant);
      // assert
      expect(resultRestaurant, tRestaurantModel);
    });
  });
}
