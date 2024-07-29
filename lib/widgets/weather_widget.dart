import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  const WeatherWidget({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Alinea verticalmente al centro
        crossAxisAlignment: CrossAxisAlignment.center, // Alinea horizontalmente al centro
        children: [
          Text(
            '${weather.city}, ${weather.country}',
            style: Theme.of(context).textTheme.headlineMedium,
            ),
          const SizedBox(height: 10),
          Text('Temperature: ${(weather.temperature - 273.15).toStringAsFixed(2)}°C'),
          Text('Weather condition: ${weather.description}'),
          Text('Latitude: ${weather.latitude}'),
          Text('Longitude: ${weather.longitude}'),
          const SizedBox(height: 10),
          Image.network(
            'https://openweathermap.org/img/wn/${weather.icon}@2x.png',
            fit: BoxFit.contain,
            height: 200,
            width: 200,
          ),
        ],
      ),
    );


  }
}
