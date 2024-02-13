
import 'package:climate/locagtion.dart';
import 'package:climate/servecis/networking.dart';
import 'package:flutter/material.dart';



const apiKey = 'd22a4bc73c14175d023032fbddbfd054';


class LoadinScreen extends StatefulWidget {
  const LoadinScreen({super.key});

  @override
  State<LoadinScreen> createState() => _LoadinScreenState();
}

class _LoadinScreenState extends State<LoadinScreen> {
  late double latitude;
  late double longitude;
  @override
  void initState(){
    super.initState();
    getlocationData();

  }
  Future<void> getlocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey ');

    void weatherData = await networkHelper.getData();

  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
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

