import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  static int id_counter = 0;
  late int id;
  final String name;
  final String location;
  final List<String> pizzas = [];

  Restaurant({required this.name, required this.location}) {
    id = id_counter;
    Restaurant.id_counter++;
  }

  @override
  List<Object?> get props => [id, name, location];
}
