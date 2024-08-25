import 'package:osm_geocoder/src/models/location_data.dart';
import 'package:osm_geocoder/src/models/map_data.dart';
import 'package:osm_geocoder/src/models/search_data.dart';

// Mock data for testing.
// A sample response from the OpenStreetMap API with a real address.
final mockLocationDataJson = {
  "place_id": 44793357,
  "licence":
      "Data © OpenStreetMap contributors, ODbL 1.0. http://osm.org/copyright",
  "osm_type": "relation",
  "osm_id": 1715536,
  "lat": "-5.8377994",
  "lon": "-35.20397829326043",
  "category": "amenity",
  "type": "university",
  "place_rank": 30,
  "importance": 0.000009999999999954,
  "addresstype": "amenity",
  "name": "UFRN - Universidade Federal do Rio Grande do Norte",
  "display_name":
      "UFRN - Universidade Federal do Rio Grande do Norte, Alameda Marechal Sucupira, Bairro Latino, Candelária, Região Sul, Natal, Região Geográfica Imediata de Natal, Região Geográfica Intermediária de Natal, Rio Grande do Norte, Região Nordeste, 59064-900, Brasil",
  "address": {
    "amenity": "UFRN - Universidade Federal do Rio Grande do Norte",
    "road": "Alameda Marechal Sucupira",
    "neighbourhood": "Bairro Latino",
    "suburb": "Candelária",
    "city_district": "Região Sul",
    "city": "Natal",
    "municipality": "Região Geográfica Imediata de Natal",
    "state_district": "Região Geográfica Intermediária de Natal",
    "state": "Rio Grande do Norte",
    "ISO3166-2-lvl4": "BR-RN",
    "region": "Região Nordeste",
    "postcode": "59064-900",
    "country": "Brasil",
    "country_code": "br"
  },
  "boundingbox": ["-5.8440909", "-5.8316620", "-35.2119960", "-35.1951721"]
};

final mockMapDataJson = {
  "place_id": 44793357,
  "licence": "Data © OpenStreetMap contributors, ODbL 1.0. http://osm.org/copyright",
  "osm_type": "relation",
  "osm_id": 1715536,
  "boundingbox": ["-5.8440909", "-5.8316620", "-35.2119960", "-35.1951721"],
  "lat": "-5.8377994",
  "lon": "-35.20397829326043",
  "display_name":
      "UFRN - Universidade Federal do Rio Grande do Norte, Alameda Marechal Sucupira, Bairro Latino, Candelária, Região Sul, Natal, Região Geográfica Imediata de Natal, Região Geográfica Intermediária de Natal, Rio Grande do Norte, Região Nordeste, 59064-900, Brasil",
  "place_rank": 30,
  "importance": 0.000009999999999954
};

final mockSearchDataJson = {
  "place_id": 44793357,
  "osm_id": 1715536,
  "boundingbox": ["-5.8440909", "-5.8316620", "-35.2119960", "-35.1951721"],
  "lat": "-5.8377994",
  "lon": "-35.20397829326043",
  "display_name":
      "UFRN - Universidade Federal do Rio Grande do Norte, Alameda Marechal Sucupira, Bairro Latino, Candelária, Região Sul, Natal, Região Geográfica Imediata de Natal, Região Geográfica Intermediária de Natal, Rio Grande do Norte, Região Nordeste, 59064-900, Brasil",
  "place_rank": 30,
  "importance": 0.000009999999999954
};

final mockLocationData = LocationData.fromJson(mockLocationDataJson);
final mockMapData = MapData.fromJson(mockMapDataJson);
final mockSearchData = SearchData.fromJson(mockSearchDataJson);
