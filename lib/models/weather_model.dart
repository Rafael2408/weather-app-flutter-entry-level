class Weather {
  final String city;
  final String country;
  final String description;
  final double temperature;
  final double latitude;
  final double longitude;
  final String icon;

  Weather({
    required this.description, 
    required this.temperature,
    required this.city,
    required this.country,
    required this.latitude,
    required this.longitude,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      description: json['weather'][0]['description'],
      temperature: json['main']['temp'],
      city: json['name'],
      country: json['sys']['country'],
      latitude: json['coord']['lat'],
      longitude: json['coord']['lon'],
      icon: json['weather'][0]['icon'],
    );
  }
}