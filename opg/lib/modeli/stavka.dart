import 'package:flutter/material.dart';

class Stavka {
  final String naziv;
  final String godiste;
  final int snaga;
  final String opis;
  final IconData ikona;

  const Stavka({
    required this.naziv,
    required this.godiste,
    required this.snaga,
    required this.opis,
    required this.ikona,
  });
}

final Set<String> kupljeniTraktori = {};

const List<Stavka> stavke = [
  Stavka(
    naziv: 'John Deere 6520',
    godiste: '2007.',
    snaga: 110,
    opis: 'Pouzdan traktor s pogonom na sva četiri kotača, spreman za rad na polju.',
    ikona: Icons.agriculture,
  ),
  Stavka(
    naziv: 'John Deere 6620',
    godiste: '2005.',
    snaga: 125,
    opis: 'Snažan i svestran traktor za svakodnevne poslove na gospodarstvu.',
    ikona: Icons.settings,
  ),
  Stavka(
    naziv: 'Fendt 718',
    godiste: '2018.',
    snaga: 180,
    opis: 'Moderan traktor s Vario mjenjačem za učinkovit rad u svim uvjetima.',
    ikona: Icons.speed,
  ),
  Stavka(
    naziv: 'Zetor 7430',
    godiste: '1998.',
    snaga: 80,
    opis: 'Izdržljiv traktor jednostavan za održavanje i rad na polju.',
    ikona: Icons.build,
  ),
  Stavka(
    naziv: 'Zetor 4320',
    godiste: '1995.',
    snaga: 60,
    opis: 'Kompaktan i univerzalan traktor za razne poslove na gospodarstvu.',
    ikona: Icons.agriculture_outlined,
  ),
];
