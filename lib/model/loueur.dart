import 'package:json_annotation/json_annotation.dart';

part 'loueur.g.dart';

@JsonSerializable()
class Loueur {
  final String nom;
  final String prenom;
  final String telephone;
  final String? idFilePath;

  Loueur(this.nom, this.prenom, this.telephone, {this.idFilePath});

  static Loueur fromJson(Map<String, dynamic> json) => _$LoueurFromJson(json);

  Map<String, dynamic> toJson() => _$LoueurToJson(this);
}
