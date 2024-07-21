import 'package:json_annotation/json_annotation.dart';
import 'package:pedalocation/model/loueur.dart';
import 'package:pedalocation/model/pedalo.dart';

part 'reservation.g.dart';

@JsonSerializable()
class Reservation {
  final Pedalo pedalo;
  final Loueur loueur;
  final DateTime depart;
  final DateTime arrivee;
  final Duration duree;
  final bool isPaid;
  final int nbPersonne;

  Reservation(
    this.pedalo,
    this.loueur,
    this.depart,
    this.arrivee,
    this.duree,
    this.nbPersonne, {
    required this.isPaid,
  });

  static Reservation fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationToJson(this);
}
