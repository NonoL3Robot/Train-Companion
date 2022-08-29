// To parse this JSON data, do
//
//     final departure = departureFromJson(jsonString);

import 'dart:convert';

Track trackFromJson(String str) => Track.fromJson(json.decode(str));

String trackToJson(Track data) => json.encode(data.toJson());

class Track {
  Track({
    required this.trains,
    required this.updated,
  });

  List<Train> trains;
  String updated;

  factory Track.fromJson(Map<String, dynamic> json) => Track(
    trains: List<Train>.from(json["trains"].map((x) => Train.fromJson(x))),
    updated: json["updated"],
  );

  Map<String, dynamic> toJson() => {
    "trains": List<dynamic>.from(trains.map((x) => x.toJson())),
    "updated": updated,
  };
}

class Train {
  Train({
    required this.origdest,
    required this.num,
    required this.type,
    required this.picto,
    required this.voie,
    required this.voieAttr,
    required this.heure,
    required this.etat,
    required this.retard,
    required this.infos,
  });

  String origdest;
  String num;
  String type;
  String picto;
  String voie;
  String voieAttr;
  String heure;
  String etat;
  String retard;
  String infos;

  factory Train.fromJson(Map<String, dynamic> json) => Train(
    origdest: json["origdest"],
    num: json["num"],
    type: json["type"],
    picto: json["picto"],
    voie: json["voie"],
    voieAttr: json["voie_attr"],
    heure: json["heure"],
    etat: json["etat"],
    retard: json["retard"],
    infos: json["infos"],
  );

  Map<String, dynamic> toJson() => {
    "origdest": origdest,
    "num": num,
    "type": type,
    "picto": picto,
    "voie": voie,
    "voie_attr": voieAttr,
    "heure": heure,
    "etat": etat,
    "retard": retard,
    "infos": infos,
  };
}
