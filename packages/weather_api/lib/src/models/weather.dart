import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()

/// {@template Weather}
/// Weather model represents the Weather of the city search.
/// {@endtemplate}
class Weather {
  /// {@macro Weather}
  const Weather({
    required this.temperature,
    required this.weatherCode,
  });

  /// The Weather factory.
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  /// The Weather [temperature].
  final double temperature;

  @JsonKey(name: 'weathercode')

  /// The Weather [weatherCode].
  final double weatherCode;
}
