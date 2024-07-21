// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reservation _$ReservationFromJson(Map<String, dynamic> json) => Reservation(
      Pedalo.fromJson(json['pedalo'] as Map<String, dynamic>),
      Loueur.fromJson(json['loueur'] as Map<String, dynamic>),
      DateTime.parse(json['depart'] as String),
      DateTime.parse(json['arrivee'] as String),
      Duration(microseconds: (json['duree'] as num).toInt()),
      (json['nbPersonne'] as num).toInt(),
      isPaid: json['isPaid'] as bool,
    );

Map<String, dynamic> _$ReservationToJson(Reservation instance) =>
    <String, dynamic>{
      'pedalo': instance.pedalo,
      'loueur': instance.loueur,
      'depart': instance.depart.toIso8601String(),
      'arrivee': instance.arrivee.toIso8601String(),
      'duree': instance.duree.inMicroseconds,
      'isPaid': instance.isPaid,
      'nbPersonne': instance.nbPersonne,
    };
