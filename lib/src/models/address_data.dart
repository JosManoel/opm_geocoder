/// Represents a detailed address of a location.
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

  /// Road name of the address.
  String road;

  /// Suburb of the address.
  String suburb;

  /// City of the address.
  String city;

  /// State or district of the address.
  String stateDistrict;

  /// State of the address.
  String state;

  /// ISO 3166-2 level 4 of the address.
  /// A code representing specific administrative subdivisions
  /// within a country, such as districts or municipalities.
  ///
  /// Example: "BR-AC" -> Brazil - Acre
  String iso31662Lvl4;

  /// Postcode of the address.
  String postcode;

  /// Country of the address.
  String country;

  /// Country code of the address.
  String countryCode;

  /// Creates an [Address] object from a JSON map.
  factory Address.fromJson(Map<String, dynamic> json) => Address(
        road: json["road"] ?? "",
        suburb: json["suburb"] ?? "",
        city: json["city"] ?? "",
        stateDistrict: json["state_district"] ?? "",
        state: json["state"] ?? "",
        iso31662Lvl4: json["ISO3166-2-lvl4"] ?? "",
        postcode: json["postcode"] ?? "",
        country: json["country"] ?? "",
        countryCode: json["country_code"] ?? "",
      );

  /// Converts an [Address] object to a JSON map.
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
