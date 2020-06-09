import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class LocationGiver {
    double longtitude;
    double latitude;
    LocationGiver();

        Future <void> getCurrentLocation() async {
    try{Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    
    longtitude = position.longitude;
    latitude = position.latitude;
    }catch(e){
      print(e);
    }
  }
  
}