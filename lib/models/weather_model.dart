class Weather {
  final String city;
  final String country;
  final double temperature;
  final String description;
  final String icon;
  final double windSpeed;
  final int humidity;
  final int pressure;
  final double latitude;
  final double longitude;

  Weather({
    required this.city,
    required this.country,
    required this.temperature,
    required this.description,
    required this.icon,
    required this.windSpeed,
    required this.humidity,
    required this.pressure,
    required this.latitude,
    required this.longitude,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json['name'],
      country: json['sys']['country'],
      temperature: json['main']['temp'],
      description: json['weather'][0]['description'],
      icon: json['weather'][0]['icon'],
      windSpeed: json['wind']['speed'].toDouble(),
      humidity: json['main']['humidity'],
      pressure: json['main']['pressure'],
      latitude: json['coord']['lat'].toDouble(),
      longitude: json['coord']['lon'].toDouble(),
    );
  }
}
