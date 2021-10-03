import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController mapController;
  Set<Marker> makers = new Set<Marker>();
  double lat = 45.521563;
  double long = -122.677433;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 77, 77, 77),
            child: Icon(
              Icons.filter_alt_outlined,
              color: Color.fromARGB(255, 129, 129, 129),
              size: 35,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: Container(
          child: Stack(children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(lat, long),
                zoom: 11.0,
              ),
              markers: makers,
            ),
            Positioned(
                top: 23,
                left: 22,
                child: Image.network(
                  "https://cdn.discordapp.com/attachments/893619730546589719/893987007775260712/a-removebg-preview.png",
                  scale: 8.0,
                ))
          ]),
        ));
  }
}
