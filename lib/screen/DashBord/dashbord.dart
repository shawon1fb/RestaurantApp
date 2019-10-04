import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:restaurant_app/Service/Location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:restaurant_app/component/BottomBar.dart';
import 'FavoritePage.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  static double latitude = 23.000;
  static double longitude = 90.000;
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _Coord = CameraPosition(
    target: LatLng(latitude, longitude),
    zoom: 14.0,
  );

  Marker marker;
  void getMarker(){
    marker= Marker(
      markerId: MarkerId('myPosition'),
      position: LatLng(latitude, longitude),
      infoWindow: InfoWindow(title: 'my location'),
    );
  }


  void getLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print('$position');
      latitude = position.latitude;
      longitude = position.longitude;
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
      zoom: 19.151926040649414);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     getLocation();
  }

  void FavoriteButton() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FavoritePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GoogleMap(
          initialCameraPosition: _Coord,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      bottomNavigationBar: BottomBar(
        Home: _goToTheLake,
        Favorite: FavoriteButton,
      ),
    );
  }
}
