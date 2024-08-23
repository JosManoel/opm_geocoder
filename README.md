# 🗺️ OSM Geocoder!

**No API Key Required!** Obtain detailed location data without needing an API key. This package is a client for the **[Open Street Map](https://www.openstreetmap.org)**.


![Contributors](https://img.shields.io/github/contributors/josmanoel/osm_geocoder)
![Issues](https://img.shields.io/github/issues/josmanoel/osm_geocoder)
![Pull Requests](https://img.shields.io/github/issues-pr/josmanoel/osm_geocoder)
![GitHub Repo stars](https://img.shields.io/github/stars/josmanoel/osm_geocoder?style=flat&logo=github)


***

## 🔎 Getting Location Data from Coordinates

Fetching location data using coordinates with the OSM Geocoder is straightforward:

```dart
Coordinates coordinates = Coordinates(-5,7807,-35,1978);
LocationData data = await OSMGeocoder.findDetails(coordinates);
```

**`LocationData` Class**

The `LocationData` class contains the following fields:

```dart
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
```

**`Address` Class**

The `Address` class provides detailed address information:

```dart
  String road;
  String suburb;
  String city;
  String stateDistrict;
  String state;
  String iso31662Lvl4;
  String postcode;
  String country;
  String countryCode;
```

For more detailed information, please refer to the documentation.

***

## 📍 About the OpenStreetMap

**OpenStreetMap** is a collaborative project that creates and distributes free geographic data without legal or technical restrictions for use.

This project is 20 years old and is currently in its 6th version of the API, with subprojects in various countries, including [Brazil!](https://wiki.openstreetmap.org/wiki/Brazil)


***

* Contribute with [OpenStreetMap](https://wiki.openstreetmap.org/wiki/How_to_contribute)
* Veja a [Comunidade Brasileira](https://wiki.openstreetmap.org/wiki/Brazil)
* Visit the [geocoder_buddy](https://pub.dev/packages/geocoder_buddy) project
* Review the [LICENSE](LICENSE)

<div align = "center">

  👋 Feito por [JosManoel](https://github.com/JosManoel) com ☕ , 🎧 e 💻.

</div>

