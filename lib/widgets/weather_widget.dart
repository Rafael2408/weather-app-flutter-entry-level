import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  const WeatherWidget({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            Text(
              '${weather.city}, ${weather.country}',
              style: const TextStyle(
                fontSize: 30,
                color: Color(0xFF4a4ce6), 
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              '${(weather.temperature - 273.15).toStringAsFixed(0)}°',
              style: const TextStyle(
                fontSize: 120,
                color: Color(0xFF4a4ce6),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              weather.description,
              style: const TextStyle(
                color: Color(0xFF4a4ce6),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://openweathermap.org/img/wn/${weather.icon}@4x.png',
              fit: BoxFit.contain,
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Icon(Icons.speed, color: Color(0xFF4a4ce6)),
                    const SizedBox(height: 5),
                    Text(
                      '${weather.windSpeed} m/s',
                      style: const TextStyle(color: Color(0xFF4a4ce6)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.water_drop, color: Color(0xFF4a4ce6)),
                    const SizedBox(height: 5),
                    Text(
                      '${weather.humidity}%',
                      style: const TextStyle(color: Color(0xFF4a4ce6)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.compress, color: Color(0xFF4a4ce6)),
                    const SizedBox(height: 5),
                    Text(
                      '${weather.pressure} hPa',
                      style: const TextStyle(color: Color(0xFF4a4ce6)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Latitude: ${weather.latitude}',
              style: const TextStyle(color: Color(0xFF4a4ce6), fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Text(
              'Longitude: ${weather.longitude}',
              style: const TextStyle(color: Color(0xFF4a4ce6), fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
