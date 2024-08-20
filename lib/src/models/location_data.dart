import 'dart:convert';

LocationData gbDataFromJson(String str) => LocationData.fromJson(json.decode(str));

String gbDataToJson(LocationData data) => json.encode(data.toJson());

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

  int placeId;
  String osmType;
  int id;
  String lat;
  String lon;
  int placeRank;
  double importance;
  String displayName;
  Address address;
  List<String> boundingbox;

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

class Address {
  Address({
    required this.road,
    required this.suburb,
    required this.city,
    required this.stateDistrict,
    required this.state,
    required this.iso31662Lvl4,
    required this.postcode,
    required this.country,
    required this.countryCode,
  });

  String road;
  String suburb;
  String city;
  String stateDistrict;
  String state;
  String iso31662Lvl4;
  String postcode;
  String country;
  String countryCode;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        road: json["road"],
        suburb: json["suburb"],
        city: json["city"],
        stateDistrict: json["state_district"],
        state: json["state"],
        iso31662Lvl4: json["ISO3166-2-lvl4"],
        postcode: json["postcode"],
        country: json["country"],
        countryCode: json["country_code"],
      );

  Map<String, dynamic> toJson() => {
        "road": road,
        "suburb": suburb,
        "city": city,
        "state_district": stateDistrict,
        "state": state,
        "ISO3166-2-lvl4": iso31662Lvl4,
        "postcode": postcode,
        "country": country,
        "country_code": countryCode,
      };
}
