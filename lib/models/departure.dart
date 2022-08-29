// // To parse this JSON data, do
// //
// //     final departure = departureFromJson(jsonString);
//
// import 'dart:convert';
//
// Departure departureFromJson(String str) => Departure.fromJson(json.decode(str));
//
// String departureToJson(Departure data) => json.encode(data.toJson());
//
// class Departure {
//   Departure({
//     required this.pagination,
//     required this.links,
//     required this.disruptions,
//     required this.notes,
//     required this.feedPublishers,
//     required this.departures,
//     required this.context,
//     required this.exceptions,
//   });
//
//   Pagination pagination;
//   List<DepartureLinkClass> links;
//   List<Disruption> disruptions;
//   List<dynamic> notes;
//   List<FeedPublisher> feedPublishers;
//   List<DepartureElement> departures;
//   Context context;
//   List<dynamic> exceptions;
//
//   factory Departure.fromJson(Map<String, dynamic> json) => Departure(
//     pagination: Pagination.fromJson(json["pagination"]),
//     links: List<DepartureLinkClass>.from(json["links"].map((x) => DepartureLinkClass.fromJson(x))),
//     disruptions: List<Disruption>.from(json["disruptions"].map((x) => Disruption.fromJson(x))),
//     notes: List<dynamic>.from(json["notes"].map((x) => x)),
//     feedPublishers: List<FeedPublisher>.from(json["feed_publishers"].map((x) => FeedPublisher.fromJson(x))),
//     departures: List<DepartureElement>.from(json["departures"].map((x) => DepartureElement.fromJson(x))),
//     context: Context.fromJson(json["context"]),
//     exceptions: List<dynamic>.from(json["exceptions"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "pagination": pagination.toJson(),
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "disruptions": List<dynamic>.from(disruptions.map((x) => x.toJson())),
//     "notes": List<dynamic>.from(notes.map((x) => x)),
//     "feed_publishers": List<dynamic>.from(feedPublishers.map((x) => x.toJson())),
//     "departures": List<dynamic>.from(departures.map((x) => x.toJson())),
//     "context": context.toJson(),
//     "exceptions": List<dynamic>.from(exceptions.map((x) => x)),
//   };
// }
//
// class Context {
//   Context({
//     required this.timezone,
//     required this.currentDatetime,
//   });
//
//   String timezone;
//   String currentDatetime;
//
//   factory Context.fromJson(Map<String, dynamic> json) => Context(
//     timezone: json["timezone"],
//     currentDatetime: json["current_datetime"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "timezone": timezone,
//     "current_datetime": currentDatetime,
//   };
// }
//
// class DepartureElement {
//   DepartureElement({
//     required this.displayInformations,
//     required this.stopPoint,
//     required this.route,
//     required this.links,
//     required this.stopDateTime,
//   });
//
//   DisplayInformations displayInformations;
//   DepartureStopPoint stopPoint;
//   Route route;
//   List<DepartureLink> links;
//   StopDateTime stopDateTime;
//
//   factory DepartureElement.fromJson(Map<String, dynamic> json) => DepartureElement(
//     displayInformations: DisplayInformations.fromJson(json["display_informations"]),
//     stopPoint: DepartureStopPoint.fromJson(json["stop_point"]),
//     route: Route.fromJson(json["route"]),
//     links: List<DepartureLink>.from(json["links"].map((x) => DepartureLink.fromJson(x))),
//     stopDateTime: StopDateTime.fromJson(json["stop_date_time"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "display_informations": displayInformations.toJson(),
//     "stop_point": stopPoint.toJson(),
//     "route": route.toJson(),
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "stop_date_time": stopDateTime.toJson(),
//   };
// }
//
// class DisplayInformations {
//   DisplayInformations({
//     required this.direction,
//     required this.code,
//     required this.network,
//     required this.links,
//     required this.color,
//     required this.name,
//     required this.physicalMode,
//     required this.headsign,
//     required this.label,
//     required this.equipments,
//     required this.textColor,
//     required this.tripShortName,
//     required this.commercialMode,
//     required this.description,
//   });
//
//   String direction;
//   String code;
//   String network;
//   List<DisplayInformationsLink> links;
//   String color;
//   String name;
//   String physicalMode;
//   String headsign;
//   String label;
//   List<dynamic> equipments;
//   String textColor;
//   String tripShortName;
//   String commercialMode;
//   String description;
//
//   factory DisplayInformations.fromJson(Map<String, dynamic> json) => DisplayInformations(
//     direction: json["direction"],
//     code: json["code"],
//     network: json["network"],
//     links: List<DisplayInformationsLink>.from(json["links"].map((x) => DisplayInformationsLink.fromJson(x))),
//     color: json["color"],
//     name: json["name"],
//     physicalMode: json["physical_mode"],
//     headsign: json["headsign"],
//     label: json["label"],
//     equipments: List<dynamic>.from(json["equipments"].map((x) => x)),
//     textColor: json["text_color"],
//     tripShortName: json["trip_short_name"],
//     commercialMode: json["commercial_mode"],
//     description: json["description"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "direction": direction,
//     "code": code,
//     "network": network,
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "color": color,
//     "name": name,
//     "physical_mode": physicalMode,
//     "headsign": headsign,
//     "label": label,
//     "equipments": List<dynamic>.from(equipments.map((x) => x)),
//     "text_color": textColor,
//     "trip_short_name": tripShortName,
//     "commercial_mode": commercialMode,
//     "description": description,
//   };
// }
//
// class DisplayInformationsLink {
//   DisplayInformationsLink({
//     required this.internal,
//     required this.type,
//     required this.id,
//     required this.rel,
//     required this.templated,
//   });
//
//   bool internal;
//   String type;
//   String id;
//   String rel;
//   bool templated;
//
//   factory DisplayInformationsLink.fromJson(Map<String, dynamic> json) => DisplayInformationsLink(
//     internal: json["internal"],
//     type: json["type"],
//     id: json["id"],
//     rel: json["rel"],
//     templated: json["templated"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "internal": internal,
//     "type": type,
//     "id": id,
//     "rel": rel,
//     "templated": templated,
//   };
// }
//
// class DepartureLink {
//   DepartureLink({
//     required this.type,
//     required this.id,
//   });
//
//   String type;
//   String id;
//
//   factory DepartureLink.fromJson(Map<String, dynamic> json) => DepartureLink(
//     type: json["type"],
//     id: json["id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "type": type,
//     "id": id,
//   };
// }
//
// class Route {
//   Route({
//     required this.direction,
//     required this.name,
//     required this.links,
//     required this.physicalModes,
//     required this.isFrequence,
//     required this.geojson,
//     required this.directionType,
//     required this.line,
//     required this.id,
//   });
//
//   Direction direction;
//   String name;
//   List<dynamic> links;
//   List<CommercialMode> physicalModes;
//   String isFrequence;
//   Geojson geojson;
//   String directionType;
//   Line line;
//   String id;
//
//   factory Route.fromJson(Map<String, dynamic> json) => Route(
//     direction: Direction.fromJson(json["direction"]),
//     name: json["name"],
//     links: List<dynamic>.from(json["links"].map((x) => x)),
//     physicalModes: List<CommercialMode>.from(json["physical_modes"].map((x) => CommercialMode.fromJson(x))),
//     isFrequence: json["is_frequence"],
//     geojson: Geojson.fromJson(json["geojson"]),
//     directionType: json["direction_type"],
//     line: Line.fromJson(json["line"]),
//     id: json["id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "direction": direction.toJson(),
//     "name": name,
//     "links": List<dynamic>.from(links.map((x) => x)),
//     "physical_modes": List<dynamic>.from(physicalModes.map((x) => x.toJson())),
//     "is_frequence": isFrequence,
//     "geojson": geojson.toJson(),
//     "direction_type": directionType,
//     "line": line.toJson(),
//     "id": id,
//   };
// }
//
// class Direction {
//   Direction({
//     required this.embeddedType,
//     required this.stopArea,
//     required this.quality,
//     required this.name,
//     required this.id,
//     required this.trip,
//   });
//
//   String embeddedType;
//   StopArea ?stopArea;
//   int quality;
//   String name;
//   String id;
//   CommercialMode ?trip;
//
//   factory Direction.fromJson(Map<String, dynamic> json) => Direction(
//     embeddedType: json["embedded_type"],
//     stopArea: json["stop_area"] == null ? null : StopArea.fromJson(json["stop_area"]),
//     quality: json["quality"],
//     name: json["name"],
//     id: json["id"],
//     trip: json["trip"] == null ? null : CommercialMode.fromJson(json["trip"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "embedded_type": embeddedType,
//     "stop_area": stopArea == null ? null : stopArea?.toJson(),
//     "quality": quality,
//     "name": name,
//     "id": id,
//     "trip": trip == null ? null : trip?.toJson(),
//   };
// }
//
// class StopArea {
//   StopArea({
//     required this.codes,
//     required this.name,
//     required this.links,
//     required this.coord,
//     required this.label,
//     required this.timezone,
//     required this.id,
//     required this.administrativeRegions,
//   });
//
//   List<Code> codes;
//   String name;
//   List<dynamic> links;
//   Coord coord;
//   String label;
//   String timezone;
//   String id;
//   List<AdministrativeRegion> ?administrativeRegions;
//
//   factory StopArea.fromJson(Map<String, dynamic> json) => StopArea(
//     codes: List<Code>.from(json["codes"].map((x) => Code.fromJson(x))),
//     name: json["name"],
//     links: List<dynamic>.from(json["links"].map((x) => x)),
//     coord: Coord.fromJson(json["coord"]),
//     label: json["label"],
//     timezone: json["timezone"],
//     id: json["id"],
//     administrativeRegions: json["administrative_regions"] == null ? null :
//     List<AdministrativeRegion>.from(json["administrative_regions"].map((x) => AdministrativeRegion.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "codes": List<dynamic>.from(codes.map((x) => x.toJson())),
//     "name": name,
//     "links": List<dynamic>.from(links.map((x) => x)),
//     "coord": coord.toJson(),
//     "label": label,
//     "timezone": timezone,
//     "id": id,
//     "administrative_regions": administrativeRegions == null ? null :
//   List<dynamic>.from(administrativeRegions!.map((x) => x.toJson())),
//   };
// }
//
// class AdministrativeRegion {
//   AdministrativeRegion({
//     required this.insee,
//     required this.name,
//     required this.level,
//     required this.coord,
//     required this.label,
//     required this.id,
//     required this.zipCode,
//   });
//
//   String insee;
//   String name;
//   int level;
//   Coord coord;
//   String label;
//   String id;
//   String zipCode;
//
//   factory AdministrativeRegion.fromJson(Map<String, dynamic> json) => AdministrativeRegion(
//     insee: json["insee"],
//     name: json["name"],
//     level: json["level"],
//     coord: Coord.fromJson(json["coord"]),
//     label: json["label"],
//     id: json["id"],
//     zipCode: json["zip_code"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "insee": insee,
//     "name": name,
//     "level": level,
//     "coord": coord.toJson(),
//     "label": label,
//     "id": id,
//     "zip_code": zipCode,
//   };
// }
//
// class Coord {
//   Coord({
//     required this.lat,
//     required this.lon,
//   });
//
//   String lat;
//   String lon;
//
//   factory Coord.fromJson(Map<String, dynamic> json) => Coord(
//     lat: json["lat"],
//     lon: json["lon"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "lat": lat,
//     "lon": lon,
//   };
// }
//
// class Code {
//   Code({
//     required this.type,
//     required this.value,
//   });
//
//   String type;
//   String value;
//
//   factory Code.fromJson(Map<String, dynamic> json) => Code(
//     type: json["type"],
//     value: json["value"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "type": type,
//     "value": value,
//   };
// }
//
// class CommercialMode {
//   CommercialMode({
//     required this.id,
//     required this.name,
//   });
//
//   String id;
//   String name;
//
//   factory CommercialMode.fromJson(Map<String, dynamic> json) => CommercialMode(
//     id: json["id"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//   };
// }
//
// class Geojson {
//   Geojson({
//     required this.type,
//     required this.coordinates,
//   });
//
//   String type;
//   List<dynamic> coordinates;
//
//   factory Geojson.fromJson(Map<String, dynamic> json) => Geojson(
//     type: json["type"],
//     coordinates: List<dynamic>.from(json["coordinates"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "type": type,
//     "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
//   };
// }
//
// class Line {
//   Line({
//     required this.code,
//     required this.name,
//     required this.links,
//     required this.color,
//     required this.geojson,
//     required this.textColor,
//     required this.physicalModes,
//     required this.codes,
//     required this.closingTime,
//     required this.openingTime,
//     required this.commercialMode,
//     required this.id,
//   });
//
//   String code;
//   String name;
//   List<dynamic> links;
//   String color;
//   Geojson geojson;
//   String textColor;
//   List<CommercialMode> physicalModes;
//   List<dynamic> codes;
//   String closingTime;
//   String openingTime;
//   CommercialMode commercialMode;
//   String id;
//
//   factory Line.fromJson(Map<String, dynamic> json) => Line(
//     code: json["code"],
//     name: json["name"],
//     links: List<dynamic>.from(json["links"].map((x) => x)),
//     color: json["color"],
//     geojson: Geojson.fromJson(json["geojson"]),
//     textColor: json["text_color"],
//     physicalModes: List<CommercialMode>.from(json["physical_modes"].map((x) => CommercialMode.fromJson(x))),
//     codes: List<dynamic>.from(json["codes"].map((x) => x)),
//     closingTime: json["closing_time"],
//     openingTime: json["opening_time"],
//     commercialMode: CommercialMode.fromJson(json["commercial_mode"]),
//     id: json["id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "code": code,
//     "name": name,
//     "links": List<dynamic>.from(links.map((x) => x)),
//     "color": color,
//     "geojson": geojson.toJson(),
//     "text_color": textColor,
//     "physical_modes": List<dynamic>.from(physicalModes.map((x) => x.toJson())),
//     "codes": List<dynamic>.from(codes.map((x) => x)),
//     "closing_time": closingTime,
//     "opening_time": openingTime,
//     "commercial_mode": commercialMode.toJson(),
//     "id": id,
//   };
// }
//
// class StopDateTime {
//   StopDateTime({
//     required this.arrivalDateTime,
//     required this.additionalInformations,
//     required this.departureDateTime,
//     required this.links,
//     required this.dataFreshness,
//     required this.baseArrivalDateTime,
//     required this.baseDepartureDateTime,
//   });
//
//   String arrivalDateTime;
//   List<dynamic> additionalInformations;
//   String departureDateTime;
//   List<dynamic> links;
//   String dataFreshness;
//   String baseArrivalDateTime;
//   String baseDepartureDateTime;
//
//   factory StopDateTime.fromJson(Map<String, dynamic> json) => StopDateTime(
//     arrivalDateTime: json["arrival_date_time"],
//     additionalInformations: List<dynamic>.from(json["additional_informations"].map((x) => x)),
//     departureDateTime: json["departure_date_time"],
//     links: List<dynamic>.from(json["links"].map((x) => x)),
//     dataFreshness: json["data_freshness"],
//     baseArrivalDateTime: json["base_arrival_date_time"] == null ? null : json["base_arrival_date_time"],
//     baseDepartureDateTime: json["base_departure_date_time"] == null ? null : json["base_departure_date_time"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "arrival_date_time": arrivalDateTime,
//     "additional_informations": List<dynamic>.from(additionalInformations.map((x) => x)),
//     "departure_date_time": departureDateTime,
//     "links": List<dynamic>.from(links.map((x) => x)),
//     "data_freshness": dataFreshness,
//     "base_arrival_date_time": baseArrivalDateTime == null ? null : baseArrivalDateTime,
//     "base_departure_date_time": baseDepartureDateTime == null ? null : baseDepartureDateTime,
//   };
// }
//
// class DepartureStopPoint {
//   DepartureStopPoint({
//     required this.commercialModes,
//     required this.name,
//     required this.links,
//     required this.physicalModes,
//     required this.coord,
//     required this.label,
//     required this.equipments,
//     required this.administrativeRegions,
//     required this.id,
//     required this.stopArea,
//   });
//
//   List<CommercialMode> commercialModes;
//   String name;
//   List<dynamic> links;
//   List<CommercialMode> physicalModes;
//   Coord coord;
//   String label;
//   List<dynamic> equipments;
//   List<AdministrativeRegion> administrativeRegions;
//   String id;
//   StopArea stopArea;
//
//   factory DepartureStopPoint.fromJson(Map<String, dynamic> json) => DepartureStopPoint(
//     commercialModes: List<CommercialMode>.from(json["commercial_modes"].map((x) => CommercialMode.fromJson(x))),
//     name: json["name"],
//     links: List<dynamic>.from(json["links"].map((x) => x)),
//     physicalModes: List<CommercialMode>.from(json["physical_modes"].map((x) => CommercialMode.fromJson(x))),
//     coord: Coord.fromJson(json["coord"]),
//     label: json["label"],
//     equipments: List<dynamic>.from(json["equipments"].map((x) => x)),
//     administrativeRegions: List<AdministrativeRegion>.from(json["administrative_regions"].map((x) => AdministrativeRegion.fromJson(x))),
//     id: json["id"],
//     stopArea: StopArea.fromJson(json["stop_area"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "commercial_modes": List<dynamic>.from(commercialModes.map((x) => x.toJson())),
//     "name": name,
//     "links": List<dynamic>.from(links.map((x) => x)),
//     "physical_modes": List<dynamic>.from(physicalModes.map((x) => x.toJson())),
//     "coord": coord.toJson(),
//     "label": label,
//     "equipments": List<dynamic>.from(equipments.map((x) => x)),
//     "administrative_regions": List<dynamic>.from(administrativeRegions.map((x) => x.toJson())),
//     "id": id,
//     "stop_area": stopArea.toJson(),
//   };
// }
//
// class Disruption {
//   Disruption({
//     required this.status,
//     required this.disruptionId,
//     required this.severity,
//     required this.impactId,
//     required this.applicationPeriods,
//     required this.messages,
//     required this.updatedAt,
//     required this.uri,
//     required this.impactedObjects,
//     required this.disruptionUri,
//     required this.contributor,
//     required this.cause,
//     required this.id,
//   });
//
//   String status;
//   String disruptionId;
//   Severity severity;
//   String impactId;
//   List<ApplicationPeriod> applicationPeriods;
//   List<Message> messages;
//   String updatedAt;
//   String uri;
//   List<ImpactedObject> impactedObjects;
//   String disruptionUri;
//   String contributor;
//   String cause;
//   String id;
//
//   factory Disruption.fromJson(Map<String, dynamic> json) => Disruption(
//     status: json["status"],
//     disruptionId: json["disruption_id"],
//     severity: Severity.fromJson(json["severity"]),
//     impactId: json["impact_id"],
//     applicationPeriods: List<ApplicationPeriod>.from(json["application_periods"].map((x) => ApplicationPeriod.fromJson(x))),
//     messages: List<Message>.from(json["messages"].map((x) => Message.fromJson(x))),
//     updatedAt: json["updated_at"],
//     uri: json["uri"],
//     impactedObjects: List<ImpactedObject>.from(json["impacted_objects"].map((x) => ImpactedObject.fromJson(x))),
//     disruptionUri: json["disruption_uri"],
//     contributor: json["contributor"],
//     cause: json["cause"],
//     id: json["id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "disruption_id": disruptionId,
//     "severity": severity.toJson(),
//     "impact_id": impactId,
//     "application_periods": List<dynamic>.from(applicationPeriods.map((x) => x.toJson())),
//     "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
//     "updated_at": updatedAt,
//     "uri": uri,
//     "impacted_objects": List<dynamic>.from(impactedObjects.map((x) => x.toJson())),
//     "disruption_uri": disruptionUri,
//     "contributor": contributor,
//     "cause": cause,
//     "id": id,
//   };
// }
//
// class ApplicationPeriod {
//   ApplicationPeriod({
//     required this.begin,
//     required this.end,
//   });
//
//   String begin;
//   String end;
//
//   factory ApplicationPeriod.fromJson(Map<String, dynamic> json) => ApplicationPeriod(
//     begin: json["begin"],
//     end: json["end"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "begin": begin,
//     "end": end,
//   };
// }
//
// class ImpactedObject {
//   ImpactedObject({
//     required this.impactedStops,
//     required this.ptObject,
//   });
//
//   List<ImpactedStop> impactedStops;
//   Direction ptObject;
//
//   factory ImpactedObject.fromJson(Map<String, dynamic> json) => ImpactedObject(
//     impactedStops: List<ImpactedStop>.from(json["impacted_stops"].map((x) => ImpactedStop.fromJson(x))),
//     ptObject: Direction.fromJson(json["pt_object"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "impacted_stops": List<dynamic>.from(impactedStops.map((x) => x.toJson())),
//     "pt_object": ptObject.toJson(),
//   };
// }
//
// class ImpactedStop {
//   ImpactedStop({
//     required this.amendedArrivalTime,
//     required this.stopPoint,
//     required this.stopTimeEffect,
//     required this.departureStatus,
//     required this.isDetour,
//     required this.amendedDepartureTime,
//     required this.baseArrivalTime,
//     required this.cause,
//     required this.baseDepartureTime,
//     required this.arrivalStatus,
//   });
//
//   String amendedArrivalTime;
//   ImpactedStopStopPoint stopPoint;
//   String stopTimeEffect;
//   String departureStatus;
//   bool isDetour;
//   String amendedDepartureTime;
//   String baseArrivalTime;
//   String cause;
//   String baseDepartureTime;
//   String arrivalStatus;
//
//   factory ImpactedStop.fromJson(Map<String, dynamic> json) => ImpactedStop(
//     amendedArrivalTime: json["amended_arrival_time"],
//     stopPoint: ImpactedStopStopPoint.fromJson(json["stop_point"]),
//     stopTimeEffect: json["stop_time_effect"],
//     departureStatus: json["departure_status"],
//     isDetour: json["is_detour"],
//     amendedDepartureTime: json["amended_departure_time"],
//     baseArrivalTime: json["base_arrival_time"] == null ? null : json["base_arrival_time"],
//     cause: json["cause"],
//     baseDepartureTime: json["base_departure_time"] == null ? null : json["base_departure_time"],
//     arrivalStatus: json["arrival_status"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "amended_arrival_time": amendedArrivalTime,
//     "stop_point": stopPoint.toJson(),
//     "stop_time_effect": stopTimeEffect,
//     "departure_status": departureStatus,
//     "is_detour": isDetour,
//     "amended_departure_time": amendedDepartureTime,
//     "base_arrival_time": baseArrivalTime == null ? null : baseArrivalTime,
//     "cause": cause,
//     "base_departure_time": baseDepartureTime == null ? null : baseDepartureTime,
//     "arrival_status": arrivalStatus,
//   };
// }
//
// class ImpactedStopStopPoint {
//   ImpactedStopStopPoint({
//     required this.name,
//     required this.links,
//     required this.coord,
//     required this.label,
//     required this.equipments,
//     required this.id,
//   });
//
//   String name;
//   List<dynamic> links;
//   Coord coord;
//   String label;
//   List<dynamic> equipments;
//   String id;
//
//   factory ImpactedStopStopPoint.fromJson(Map<String, dynamic> json) => ImpactedStopStopPoint(
//     name: json["name"],
//     links: List<dynamic>.from(json["links"].map((x) => x)),
//     coord: Coord.fromJson(json["coord"]),
//     label: json["label"],
//     equipments: List<dynamic>.from(json["equipments"].map((x) => x)),
//     id: json["id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "links": List<dynamic>.from(links.map((x) => x)),
//     "coord": coord.toJson(),
//     "label": label,
//     "equipments": List<dynamic>.from(equipments.map((x) => x)),
//     "id": id,
//   };
// }
//
// class Message {
//   Message({
//     required this.text,
//     required this.channel,
//   });
//
//   String text;
//   Channel channel;
//
//   factory Message.fromJson(Map<String, dynamic> json) => Message(
//     text: json["text"],
//     channel: Channel.fromJson(json["channel"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "text": text,
//     "channel": channel.toJson(),
//   };
// }
//
// class Channel {
//   Channel({
//     required this.contentType,
//     required this.id,
//     required this.types,
//     required this.name,
//   });
//
//   String contentType;
//   String id;
//   List<String> types;
//   String name;
//
//   factory Channel.fromJson(Map<String, dynamic> json) => Channel(
//     contentType: json["content_type"],
//     id: json["id"],
//     types: List<String>.from(json["types"].map((x) => x)),
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "content_type": contentType,
//     "id": id,
//     "types": List<dynamic>.from(types.map((x) => x)),
//     "name": name,
//   };
// }
//
// class Severity {
//   Severity({
//     required this.color,
//     required this.priority,
//     required this.name,
//     required this.effect,
//   });
//
//   String color;
//   int priority;
//   String name;
//   String effect;
//
//   factory Severity.fromJson(Map<String, dynamic> json) => Severity(
//     color: json["color"],
//     priority: json["priority"],
//     name: json["name"],
//     effect: json["effect"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "color": color,
//     "priority": priority,
//     "name": name,
//     "effect": effect,
//   };
// }
//
// class FeedPublisher {
//   FeedPublisher({
//     required this.url,
//     required this.id,
//     required this.license,
//     required this.name,
//   });
//
//   String url;
//   String id;
//   String license;
//   String name;
//
//   factory FeedPublisher.fromJson(Map<String, dynamic> json) => FeedPublisher(
//     url: json["url"],
//     id: json["id"],
//     license: json["license"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "url": url,
//     "id": id,
//     "license": license,
//     "name": name,
//   };
// }
//
// class DepartureLinkClass {
//   DepartureLinkClass({
//     required this.href,
//     required this.type,
//     required this.rel,
//     required this.templated,
//   });
//
//   String href;
//   String type;
//   String ?rel;
//   bool templated;
//
//   factory DepartureLinkClass.fromJson(Map<String, dynamic> json) => DepartureLinkClass(
//     href: json["href"],
//     type: json["type"],
//     rel: json["rel"] == null ? null : json["rel"],
//     templated: json["templated"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "href": href,
//     "type": type,
//     "rel": rel == null ? null : rel,
//     "templated": templated,
//   };
// }
//
// class Pagination {
//   Pagination({
//     required this.startPage,
//     required this.itemsOnPage,
//     required this.itemsPerPage,
//     required this.totalResult,
//   });
//
//   int startPage;
//   int itemsOnPage;
//   int itemsPerPage;
//   int totalResult;
//
//   factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
//     startPage: json["start_page"],
//     itemsOnPage: json["items_on_page"],
//     itemsPerPage: json["items_per_page"],
//     totalResult: json["total_result"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "start_page": startPage,
//     "items_on_page": itemsOnPage,
//     "items_per_page": itemsPerPage,
//     "total_result": totalResult,
//   };
// }
