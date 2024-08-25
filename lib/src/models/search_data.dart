import 'dart:convert';

/// Converts a JSON string to a list of [SearchData] objects.
List<SearchData> searchDataFromJson(String str) =>
    List<SearchData>.from(json.decode(str).map((x) => SearchData.fromJson(x)));

/// Converts a list of [SearchData] objects to a JSON string.
String searchDataToJson(List<SearchData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

/// Represents search data from the OpenStreetMap API.
class SearchData {
  SearchData({
    required this.placeId,
    required this.id,
    required this.boundingbox,
    required this.lat,
    required this.lon,
    required this.displayName,
    required this.placeRank,
    required this.importance,
  });

  /// Unique identifier of the place.
  int placeId;

  /// OpenStreetMap identifier.
  int id;

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

  /// Creates a [SearchData] object from a JSON map.
  factory SearchData.fromJson(Map<String, dynamic> json) => SearchData(
        placeId: json["place_id"],
        id: json["osm_id"],
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
        lat: json["lat"],
        lon: json["lon"],
        displayName: json["display_name"],
        placeRank: json["place_rank"],
        importance: json["importance"].toDouble(),
      );

  /// Converts a [SearchData] object to a JSON map.
  Map<String, dynamic> toJson() => {
        "place_id": placeId,
        "osm_id": id,
        "boundingbox": List<dynamic>.from(boundingbox.map((x) => x)),
        "lat": lat,
        "lon": lon,
        "display_name": displayName,
        "place_rank": placeRank,
        "importance": importance,
      };
}
