import 'dart:html';

import 'package:flutter/material.dart';
import 'package:location/location.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Location',
            style: TextStyle(color: Colors.black, fontSize: 24)),
      ),
    );
  }

  // to use location package take an object
  Location location = Location();
  late PermissionStatus permissionStatus;
  bool serviceEnabled=false;

  //two main object {permission to use gps to get your location,enable GPS service 3la mobile}
  Future<bool> isPermissionGranted() async {
    permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      //request permission
      permissionStatus = await location.requestPermission();
    }
    return permissionStatus==PermissionStatus.granted;
  }

  Future<bool> isServiceEnabled() async{
    serviceEnabled=await location.serviceEnabled();
    if(!serviceEnabled) {
      serviceEnabled = await location.requestService();
    }
      return serviceEnabled;
  }
  void getUserLocation(){

  }
}
