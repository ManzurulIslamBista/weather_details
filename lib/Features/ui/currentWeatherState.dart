import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_details/models/CurrentWeather.dart';
import 'package:weather_details/providers/weatherApiProvider.dart';

class CurrentWeatherState extends StatefulWidget {

  const CurrentWeatherState({Key? key,}):super(key: key);

  @override
  State<CurrentWeatherState> createState() => _CurrentWeatherStateState();
}

class _CurrentWeatherStateState extends State<CurrentWeatherState> {
  @override

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/1.1,
                  color: Colors.greenAccent,
                  child: Text("Temperature : ${context.read<WeatherApiProvider>().currentWeather.main?.temp ?? 'N/A'}"),
                )
              ],

            ),
            SizedBox(height: 15,),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/1.1,
                  color: Colors.greenAccent,

                ),

              ],

            ),
            SizedBox(height: 15,),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/1.1,
                  color: Colors.greenAccent,

                ),

              ],

            ),
            SizedBox(height: 15,),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/1.1,
                  color: Colors.greenAccent,

                ),

              ],

            ),
            SizedBox(height: 15,),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/1.1,
                  color: Colors.greenAccent,

                ),

              ],

            ),
            SizedBox(height: 15,),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/1.1,
                  color: Colors.greenAccent,

                ),

              ],

            ),
            SizedBox(height: 15,),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/1.1,
                  color: Colors.greenAccent,

                ),

              ],

            ),
            SizedBox(height: 15,),
          ],

        ),
      )
    );
  }
}
