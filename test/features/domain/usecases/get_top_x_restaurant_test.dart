import 'package:dartz/dartz.dart';
import 'package:flutter_restor_app/features/restaurants/domain/entities/Restaurant.dart';
import 'package:flutter_restor_app/features/restaurants/domain/repositories/restaurant_repository.dart';
import 'package:flutter_restor_app/features/restaurants/domain/usecases/get_top_x_restaurant.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRestaurantRepository extends Mock implements RestaurantRepository {}

void main() {
  late MockRestaurantRepository mockRestaurantRepository;
  late GetTopXRestaurant usecase;

  setUp(() {
    mockRestaurantRepository = MockRestaurantRepository();
    usecase = GetTopXRestaurant(mockRestaurantRepository);
  });

  const tNumberOfRestaurants = 4;
  final List<Restaurant> tTopXRestaurant = <Restaurant>[
    Restaurant(name: "Italian Pizzas", location: "Italy"),
    Restaurant(name: "Tacos mexican", location: "Mexican"),
    Restaurant(name: "Falafol", location: "Syria"),
    Restaurant(name: "Herissa", location: "Tunisia"),
  ];

  test(
    "Should get the top x restaurants",
    () async {
      // arrange
      when(mockRestaurantRepository.getTopXRestaurants(any))
          .thenAnswer((_) async => Right(tTopXRestaurant));
      // act
      final result = await usecase(Params(number: tNumberOfRestaurants));
      // assert
      expect(result, Right(tTopXRestaurant));
      verify(mockRestaurantRepository.getTopXRestaurants(tNumberOfRestaurants));
      verifyNoMoreInteractions(mockRestaurantRepository);
    },
  );
}
