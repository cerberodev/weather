import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

/// The [WeatherCondition] enum.
enum WeatherCondition {
  /// The [WeatherCondition.clear] enum.
  clear,

  /// The [WeatherCondition.rainy] enum.
  rainy,

  /// The [WeatherCondition.cloudy] enum.
  cloudy,

  /// The [WeatherCondition.snowy] enum.
  snowy,

  /// The [WeatherCondition.unknown] enum.
  unknown,
}

@JsonSerializable()

/// {@template Weather}
/// Weather model represents the Weather of the city search.
/// {@endtemplate}
class Weather extends Equatable {
  /// {@macro Weather}
  const Weather({
    required this.location,
    required this.temperature,
    required this.condition,
  });

  /// The [Weather.fromJson].
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  /// The Weather [location].
  final String location;

  /// The Weather [temperature].
  final double temperature;

  /// The Weather [condition].
  final WeatherCondition condition;

  @override
  List<Object> get props => [location, temperature, condition];
}
