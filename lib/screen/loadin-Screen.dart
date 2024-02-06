import 'package:climate/locagtion.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
class LoadinScreen extends StatefulWidget {
  const LoadinScreen({super.key});

  @override
  State<LoadinScreen> createState() => _LoadinScreenState();
}

class _LoadinScreenState extends State<LoadinScreen> {
  @override
  void initState(){
    super.initState();
    getlocation();
  }
  Future<void> getlocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }




  @override
  Widget build(BuildContext context) {
    String MyMargin = 'abc';
    double MyMarginAsADouble = double.parse(MyMargin);
    try {
      double MyMarginAsADouble = double.parse(MyMargin);
    }
    catch (e) {
      print(e);

    }
      return Scaffold(
        body: Container(
          margin: EdgeInsets.all(MyMarginAsADouble ?? 30.0),
          color: Colors.red,
        ),
      );
    }

}
