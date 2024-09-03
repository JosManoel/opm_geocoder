import 'dart:convert';

/// Converts a JSON string to a list of [MapData] objects.
List<MapData> mapDataFromJson(String str) =>
    List<MapData>.from(json.decode(str).map((x) => MapData.fromJson(x)));

/// Converts a list of [MapData] objects to a JSON string.
String mapDataToJson(List<MapData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

/// Represents map data from the OpenStreetMap API.
class MapData {
  MapData({
    required this.placeId,
    required this.licence,
    required this.osmType,
    required this.osmId,
    required this.boundingbox,
    required this.lat,
    required this.lon,
    required this.displayName,
    required this.placeRank,
    required this.importance,
  });

  /// Unique identifier for the place.
  int placeId;

  /// License information of the data.
  String licence;

  /// Type of OpenStreetMap element.
  String osmType;

  /// Unique identifier for the OpenStreetMap element.
  int osmId;

  /// Bounding box of the place.
  List<String> boundingbox;

  /// Latitude of the location.
  String lat;

  /// Longitude of the location.
  String lon;

  /// Display name of the place.
  String displayName;

  /// Rank of the place.
  int placeRank;

  /// Importance of the place.
  double importance;

  /// Creates a [MapData] object from a JSON map.
  factory MapData.fromJson(Map<String, dynamic> json) => MapData(
        placeId: json["place_id"] ?? "",
        licence: json["licence"] ?? "",
        osmType: json["osm_type"] ?? "",
        osmId: json["osm_id"] ?? "",
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)) ?? [],
        lat: json["lat"] ?? "",
        lon: json["lon"] ?? "",
        displayName: json["display_name"] ?? "",
        placeRank: json["place_rank"] ?? "",
        importance: json["importance"].toDouble() ?? 0.0,
      );

  /// Converts a [MapData] object to a JSON map.
  Map<String, dynamic> toJson() => {
        "place_id": placeId,
        "licence": licence,
        "osm_type": osmType,
        "osm_id": osmId,
        "boundingbox": List<dynamic>.from(boundingbox.map((x) => x)),
        "lat": lat,
        "lon": lon,
        "display_name": displayName,
        "place_rank": placeRank,
        "importance": importance,
      };
}
