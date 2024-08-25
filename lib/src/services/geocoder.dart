import 'package:osm_geocoder/src/services/network_service.dart';
import 'package:osm_geocoder/src/models/map_data.dart';
import 'package:osm_geocoder/osm_geocoder.dart';

/// A class that provides methods to interact with the OpenStreetMap Geocoding API.
class OSMGeocoder {
  /// Queries the OpenStreetMap API with an address and returns a list of [MapData].
  ///
  /// [address] is the address to search for.
  /// Returns a list of [MapData] containing the search results.
  static Future<List<MapData>> query(String address) async {
    var data = await NetworkService.searchAddress(address);
    return data;
  }

  /// Converts [SearchData] to [LocationData] by querying the OpenStreetMap API.
  ///
  /// [data] is the search data containing latitude and longitude.
  /// Returns [LocationData] with detailed information about the location.
  static Future<LocationData> searchToLocationData(SearchData data) async {
    var coordinates =
        Coordinates(lat: double.parse(data.lat), lon: double.parse(data.lon));
    var res = await NetworkService.getDetails(coordinates);
    return res;
  }

  /// Finds detailed information about a location using its coordinates.
  ///
  /// [coordinates] are the geographical coordinates of the location.
  /// Returns [LocationData] with detailed information about the location.
  static Future<LocationData> findDetails(Coordinates coordinates) async {
    var data = await NetworkService.getDetails(coordinates);
    return data;
  }
}
