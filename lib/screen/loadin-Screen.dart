import 'package:climate/locagtion.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


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
    print('this line of code is triggered');
    getData();
  }
  Future<void> getlocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }
  void getData() async{
    http.Response response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}' as Uri);
    if(response.statusCode ==200) {
      String data = response.body;
      print(data);
    } else {
    print(response.statusCode);
    }
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
    getData();
      return Scaffold(
        body: Container(
          margin: EdgeInsets.all(MyMarginAsADouble ?? 30.0),
          color: Colors.red,
        ),
      );
    }

}
