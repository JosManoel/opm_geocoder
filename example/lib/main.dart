import 'package:flutter/material.dart';
import 'package:osm_geocoder/osm_geocoder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OSM Geocoder Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DemoGeocoderPage(title: 'OSM Geocoder Demo'),
    );
  }
}

class DemoGeocoderPage extends StatefulWidget {
  const DemoGeocoderPage({super.key, required this.title});
  final String title;

  @override
  State<DemoGeocoderPage> createState() => _DemoGeocoderPageState();
}

class _DemoGeocoderPageState extends State<DemoGeocoderPage> {
  final TextEditingController _controller = TextEditingController(text: 'UFRN');
  List<MapData> _result = [];
  bool _isLoading = false;

  Future<void> _searchAddress() async {
    final query = _controller.text;

    setState(() {
      _isLoading = true;
    });

    try {
      final result = await OSMGeocoder.query(query);
      setState(() {
        _result = result;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });

      print("Error: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _searchAddress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Search address:',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                  autofocus: true,
                  onPressed: _searchAddress,
                  icon: const Icon(Icons.search)),
            ),
          ),
          const SizedBox(height: 16.0),
          _isLoading
              ? const CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                      itemCount: _result.length,
                      itemBuilder: (context, index) {
                        final address = _result[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ListTile(
                            leading: const Icon(Icons.location_on),
                            tileColor:
                                Theme.of(context).colorScheme.primaryContainer,
                            iconColor:
                                Theme.of(context).colorScheme.inversePrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            title: Text(address.displayName),
                            subtitle: Text(
                                "Lat: ${address.lat} | Lon: ${address.lon}"),
                          ),
                        );
                      }),
                ),
        ]),
      ),
    );
  }
}
