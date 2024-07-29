import 'package:flutter/material.dart';
import '../services/weather_service.dart';
import '../models/weather_model.dart';
import '../widgets/weather_widget.dart';

class WeatherScreen extends StatelessWidget {
  final String city;

  const WeatherScreen({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, 
      appBar: AppBar(
        title: Text('Weather in $city'),
        backgroundColor: Colors
            .transparent, 
        elevation: 0,
      ),
      body: FutureBuilder<Weather?>(
        future: WeatherService().fetchWeather(city),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text('No data available'));
          } else {
            final weather = snapshot.data!;
            return WeatherWidget(weather: weather);
          }
        },
      ),
    );
  }
}
