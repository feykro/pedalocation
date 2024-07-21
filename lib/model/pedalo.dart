import 'package:json_annotation/json_annotation.dart';

part 'pedalo.g.dart';

@JsonSerializable()
class Pedalo {
  final int numero;
  final bool avecTobogan;

  Pedalo(this.numero, this.avecTobogan);

  static Pedalo fromJson(Map<String, dynamic> json) => _$PedaloFromJson(json);

  Map<String, dynamic> toJson() => _$PedaloToJson(this);
}
