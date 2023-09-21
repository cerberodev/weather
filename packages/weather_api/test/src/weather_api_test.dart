// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:weather_api/weather_api.dart';

void main() {
  group('WeatherApi', () {
    test('can be instantiated', () {
      expect(
        Location(
          id: 4887398,
          name: 'Chicago',
          latitude: 41.85,
          longitude: -87.65,
        ),
        isNotNull,
      );
      expect(
        Weather(
          temperature: 32,
          weatherCode: 800,
        ),
        isNotNull,
      );
    });
  });
}
