import 'package:osm_geocoder/src/models/location_data.dart';
import 'package:osm_geocoder/src/models/coordinates.dart';
import 'package:osm_geocoder/src/models/map_data.dart';
import 'package:http/http.dart' as http;

const PATH = "https://nominatim.openstreetmap.org";

class NetworkService {
  static Future<List<MapData>> searchAddress(String query) async {
    var request =
        http.Request('GET', Uri.parse("$PATH/search?q=$query&format=jsonv2"));
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return mapDataFromJson(data);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  static Future<LocationData> getDetails(Coordinates pos) async {
    var request = http.Request('GET',
        Uri.parse('$PATH/reverse?lat=${pos.lat}&lon=${pos.lon}&format=jsonv2'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return gbDataFromJson(data);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
