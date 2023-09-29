import 'package:dartz/dartz.dart';
import 'package:flutter_restor_app/core/usecase.dart';
import 'package:flutter_restor_app/features/restaurants/domain/entities/Restaurant.dart';
import 'package:flutter_restor_app/features/restaurants/domain/repositories/restaurant_repository.dart';
import 'package:flutter_restor_app/features/restaurants/domain/usecases/get_all_restaurants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRestaurantRepository extends Mock implements RestaurantRepository {}

void main() {
  late MockRestaurantRepository mockRestaurantRepository;
  late GetAllRestaurants usecase;

  setUp(() {
    mockRestaurantRepository = MockRestaurantRepository();
    usecase = GetAllRestaurants(repository: mockRestaurantRepository);
  });

  List<Restaurant> allRestaurants = <Restaurant>[
    Restaurant(name: "ghost0", location: "NY"),
    Restaurant(name: "ghost1", location: "NY"),
    Restaurant(name: "ghost2", location: "NY"),
    Restaurant(name: "ghost3", location: "NY"),
    Restaurant(name: "ghost4", location: "NY"),
    Restaurant(name: "ghost5", location: "NY"),
  ];

  test("Should Return all the Restaurants", () async {
    // arrange
    when(mockRestaurantRepository.getAllRestaurants())
        .thenAnswer((_) async => Right(allRestaurants));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, Right(allRestaurants));
    verify(mockRestaurantRepository.getAllRestaurants());
    verifyNoMoreInteractions(mockRestaurantRepository);
  });
}
