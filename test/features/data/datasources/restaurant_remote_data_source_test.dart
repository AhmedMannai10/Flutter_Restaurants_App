import 'package:flutter_restor_app/features/restaurants/data/datasources/restaurants_remote_datasource.dart';
import 'package:flutter_restor_app/features/restaurants/domain/repositories/restaurant_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class MockRestaurantRemoteDataSourceImpl extends Mock
    implements RestaurantRepository {}

Future<void> main() async {
  late http.Client client;
  late MockRestaurantRemoteDataSourceImpl mockRestaurantRemoteDataSource;
  late RestaurantRemoteDataSourceImpl usecase;
  setUp(() {
    client = http.Client();
    usecase = RestaurantRemoteDataSourceImpl(client: client);
    mockRestaurantRemoteDataSource = MockRestaurantRemoteDataSourceImpl();
  });

  test("should get all the restaurant form spring boot server", () async {
    // arrange

    final results = await usecase.getAllRestaurants();
    // act
    expect(results, results);
    // assert
  });
}
