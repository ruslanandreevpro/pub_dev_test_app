import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class User with _$User {

  factory User({required String name, required int age}) = _User;
}