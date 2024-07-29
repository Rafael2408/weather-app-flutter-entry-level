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
            style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
          const SizedBox(height: 10),
          Text('Temperature: ${(weather.temperature - 273.15).toStringAsFixed(2)}°C', style: const TextStyle(color: Colors.white)),
          Text('Weather condition: ${weather.description}', style: const TextStyle(color: Colors.white)),
          Text('Latitude: ${weather.latitude}', style: const TextStyle(color: Colors.white)),
          Text('Longitude: ${weather.longitude}', style: const TextStyle(color: Colors.white)),
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
