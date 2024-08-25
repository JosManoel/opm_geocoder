import 'dart:convert';

import 'package:osm_geocoder/src/models/address_data.dart';

/// Converts a JSON string to a [LocationData] object.
LocationData locationDataFromJson(String str) => LocationData.fromJson(json.decode(str));

/// Converts a [LocationData] object to a JSON string.
String locationDataToJson(LocationData data) => json.encode(data.toJson());

/// A detailed address of a location.
class LocationData {
  LocationData({
    required this.placeId,
    required this.osmType,
    required this.id,
    required this.lat,
    required this.lon,
    required this.placeRank,
    required this.importance,
    required this.displayName,
    required this.address,
    required this.boundingbox,
  });

  /// Unique identifier for the place.
  int placeId;

  /// Type of the OpenStreetMap element.
  String osmType;

  /// OpenStreetMap element ID.
  int id;

  /// Latitude of the location.
  String lat;

  /// Longitude of the location.
  String lon;

  /// Rank of the location.
  int placeRank;

  /// Importance of the location.
  double importance;

  /// Display name of the place.
  String displayName;

  /// Address details of the location.
  Address address;

  /// Bounding box of the location.
  List<String> boundingbox;

  /// Creates a [LocationData] object from a JSON object.
  factory LocationData.fromJson(Map<String, dynamic> json) => LocationData(
        placeId: json["place_id"],
        osmType: json["osm_type"],
        id: json["osm_id"],
        lat: json["lat"],
        lon: json["lon"],
        placeRank: json["place_rank"],
        importance: json["importance"].toDouble(),
        displayName: json["display_name"],
        address: Address.fromJson(json["address"]),
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
      );

  /// Converts a [LocationData] object to a JSON.
  Map<String, dynamic> toJson() => {
        "place_id": placeId,
        "osm_type": osmType,
        "osm_id": id,
        "lat": lat,
        "lon": lon,
        "place_rank": placeRank,
        "importance": importance,
        "display_name": displayName,
        "address": address.toJson(),
        "boundingbox": List<dynamic>.from(boundingbox.map((x) => x)),
      };
}
