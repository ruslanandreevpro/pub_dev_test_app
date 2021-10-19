// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fruit _$FruitFromJson(Map<String, dynamic> json) => Fruit(
      genus: json['genus'] as String,
      name: json['name'] as String,
      id: json['id'] as int,
      family: json['family'] as String,
      order: json['order'] as String,
    );

Map<String, dynamic> _$FruitToJson(Fruit instance) => <String, dynamic>{
      'genus': instance.genus,
      'name': instance.name,
      'id': instance.id,
      'family': instance.family,
      'order': instance.order,
    };
