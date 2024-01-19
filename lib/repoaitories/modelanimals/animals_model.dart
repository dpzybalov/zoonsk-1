import 'package:json_annotation/json_annotation.dart';

part 'animals_model.g.dart';

@JsonSerializable()
class Animalsname {
  final int id;
  final String name;

  Animalsname({required this.id, required this.name});

  factory Animalsname.fromJson(Map<String, dynamic> json) =>
      _$AnimalsFromJson(json);
  Map<String, dynamic> toJson() => _$AnimalsToJson(this);
}
