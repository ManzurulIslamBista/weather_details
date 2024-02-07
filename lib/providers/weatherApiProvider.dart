import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:weather_details/Features/ui/currentWeatherState.dart';
import 'package:weather_details/models/CurrentWeather.dart';

class WeatherApiProvider extends ChangeNotifier {
  late CurrentWeather currentWeather ;
  Future<void> provider() async {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=23.7427306&lon=90.3777873&appid=78d0a5ceb0b644ac8d9c478d67ce5ab4"));
    if (response.statusCode == 200) {
      dynamic jsonData = json.decode(response.body);
      currentWeather = CurrentWeather.fromJson(jsonData);
      print(currentWeather!.main!.temp);
    } else {
      print('Failed to load weather data');

    }
    currentWeather = CurrentWeather();
    notifyListeners();

  }
}
