import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:restaurant_app/Service/Location.dart';

import 'package:restaurant_app/Service/Location.dart';

class Mapview extends StatefulWidget {
  Mapview({this.location});

  final Location location;

  @override
  _MapviewState createState() => _MapviewState();
}

class _MapviewState extends State<Mapview> {
  static double latitude = 23;
  static double longitude = 90.000;

  // Location location = new Location();
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _Coord = CameraPosition(
    target: LatLng(latitude, longitude),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  Marker marker;

  void getMarker() {
    marker = Marker(
      markerId: MarkerId('myPosition'),
      position: LatLng(latitude, longitude),
      infoWindow: InfoWindow(title: 'my location'),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;
      if (longitude == null || longitude == null) {
        latitude = 23.0;
        longitude = 90.0;
      }

      _goToTheLake();
    } catch (e) {
      print(e);
    }
  }

  void _goToTheLake() async {
    try {
      GoogleMapController controller = await _controller.future;
      print('====================================');
      controller.animateCamera(CameraUpdate.newCameraPosition(_MyPosition));
    } catch (e) {
      print(e);
    }
  }

  static final CameraPosition _MyPosition = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(latitude, longitude),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GoogleMap(
          compassEnabled: true,
          myLocationEnabled: true,
          initialCameraPosition: _Coord,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToTheLake,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        elevation: 0,
        child: Icon(
          Icons.gps_fixed,
        ),
      ),
    );
  }
}
