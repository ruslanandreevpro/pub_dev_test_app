import 'package:json_annotation/json_annotation.dart';

part 'fruit_model.g.dart';

@JsonSerializable()
class Fruit {
  String genus;
  String name;
  int id;
  String family;
  String order;

  Fruit({
    required this.genus,
    required this.name,
    required this.id,
    required this.family,
    required this.order,
  });

  factory Fruit.fromJson(Map<String, dynamic> json) => _$FruitFromJson(json);

  Map<String, dynamic> toJson() => _$FruitToJson(this);
}