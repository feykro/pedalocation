// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loueur.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loueur _$LoueurFromJson(Map<String, dynamic> json) => Loueur(
      json['nom'] as String,
      json['prenom'] as String,
      json['telephone'] as String,
      idFilePath: json['idFilePath'] as String?,
    );

Map<String, dynamic> _$LoueurToJson(Loueur instance) => <String, dynamic>{
      'nom': instance.nom,
      'prenom': instance.prenom,
      'telephone': instance.telephone,
      'idFilePath': instance.idFilePath,
    };
