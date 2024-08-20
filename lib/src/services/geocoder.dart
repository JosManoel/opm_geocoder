import 'package:osm_geocoder/src/services/network_service.dart';
import 'package:osm_geocoder/src/models/map_data.dart';
import 'package:osm_geocoder/osm_geocoder.dart';

class OSMGeocoder {
  static Future<List<MapData>> query(String address) async {
    var data = await NetworkService.searchAddress(address);
    return data;
  }

  static Future<LocationData> searchToLocationData(SearchData data) async {
    var pos =
        Coordinates(lat: double.parse(data.lat), lon: double.parse(data.lon));
    var res = await NetworkService.getDetails(pos);
    return res;
  }

  static Future<LocationData> findDetails(Coordinates pos) async {
    var data = await NetworkService.getDetails(pos);
    return data;
  }
}
