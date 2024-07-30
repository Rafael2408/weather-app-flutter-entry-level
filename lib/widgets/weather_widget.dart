import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  const WeatherWidget({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Alinea verticalmente al centro
          crossAxisAlignment:
              CrossAxisAlignment.center, // Alinea horizontalmente al centro
          children: [
            Text(
              '${weather.city}, ${weather.country}',
              style: const TextStyle(
                fontSize: 30,
                color: Color(0xFF4a4be3),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '${(weather.temperature - 273.15).toStringAsFixed(0)}°C',
              style: const TextStyle(
                fontSize: 80,
                color: Color(0xFF4a4be3),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              weather.description,
              style: const TextStyle(
                color: Color(0xFF4a4be3),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lat: ${weather.latitude}',
                  style: const TextStyle(
                    color: Color(0xFF4a4be3),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Lon: ${weather.longitude}',
                  style: const TextStyle(
                    color: Color(0xFF4a4be3),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://openweathermap.org/img/wn/${weather.icon}@4x.png',
              fit: BoxFit.contain,
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
