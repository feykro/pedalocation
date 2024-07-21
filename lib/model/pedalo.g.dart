// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedalo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pedalo _$PedaloFromJson(Map<String, dynamic> json) => Pedalo(
      (json['numero'] as num).toInt(),
      json['avecTobogan'] as bool,
    );

Map<String, dynamic> _$PedaloToJson(Pedalo instance) => <String, dynamic>{
      'numero': instance.numero,
      'avecTobogan': instance.avecTobogan,
    };
