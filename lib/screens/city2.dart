import 'package:flutter/material.dart';
import 'package:weather_forecast_and_current_location/utilities/constants.dart';
class City_screen2 extends StatefulWidget {
  const City_screen2({super.key});

  @override
  State<City_screen2> createState() => _City_screen2State();
}

class _City_screen2State extends State<City_screen2> {
  String? text_field_input;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/screen_city.jpg"),alignment: Alignment.bottomCenter,
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      }, child: Icon(Icons.arrow_back_ios))),
              Container(
                margin: EdgeInsets.all(15),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: k_textfield_decoration,
                  onChanged: (value) {
                    text_field_input=value;
                  },
                  /*onChanged: (value){


                    print(value);
                  },*/
                ),
              ),
              TextButton(onPressed: () async{
                Navigator.pop(context,await text_field_input);
              }, child: Text("Get Weather", style: TextStyle( fontSize: 30, color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
