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
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
  }




  @override
  Widget build(BuildContext context) {
    String MyMargin = '15';
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(double.parse(MyMargin)),
        color: Colors.red,
      ),
    );
  }
}
