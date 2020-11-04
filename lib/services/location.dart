import 'package:geolocator/geolocator.dart';


class Location{

  double latitude;
  double longtitude;

  void getCurrentLocation() async{
    try{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      //print(position);
      longtitude = position.longitude;
      latitude = position.latitude;
    }catch(e) {
      print(e);
    }
  }

}

//double temperature = decodedData ['main']['temp'];
//int weather = decodedData ['weather'][0]['id'];
//String city = decodedData ['name'];
