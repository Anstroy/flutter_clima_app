import 'package:geolocator/geolocator.dart';

class Location {
  double lon;
  double lat;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      this.lon = position.longitude;
      this.lat = position.latitude;
      print('$lon and $lat');
    } catch (e) {
      print(e);
    }
  }
}
