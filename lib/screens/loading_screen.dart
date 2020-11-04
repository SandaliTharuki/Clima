

import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/networking.dart';


const apiKey = '6bd243191b1318482198ac4d804b43b9';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  double long;

  double lat;

  @override
  void initState() {

    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    long = location.longtitude;
    lat = location.latitude;

    NetworkHelper networkHelper = NetworkHelper(
        'http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apiKey');

    var getWeather = await networkHelper.getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }

}