import 'package:geolocator/geolocator.dart';

class Location {
  var latitude;
  var longitude;

  Future<Position> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
      print('latitude = $latitude');
      print('longitude = $longitude');

      return position;
    } catch (e) {
      print('exp ==== $e');
    }
  }
}
