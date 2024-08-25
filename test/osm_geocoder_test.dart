import 'package:test/test.dart';
import 'package:osm_geocoder/osm_geocoder.dart';
import 'mocks/mocks.dart';

void main() {
  group('OSMGeocoder', () {
    test('query returns MapData list', () async {
      final result = await OSMGeocoder.query('UFRN');
      expect(result, isA<List<MapData>>());
      expect(result.first.placeId, mockMapData.placeId);
    });

    test('searchToLocationData returns LocationData', () async {
      final result = await OSMGeocoder.searchToLocationData(mockSearchData);
      expect(result, isA<LocationData>());
      expect(result.placeId, mockLocationData.placeId);
    });

    test('findDetails returns LocationData', () async {
      final coordinates = Coordinates(lat: -5.837799, lon: -35.203978);
      final result = await OSMGeocoder.findDetails(coordinates);
      expect(result, isA<LocationData>());
      expect(result.placeId, mockLocationData.placeId);
    });
  });
}
