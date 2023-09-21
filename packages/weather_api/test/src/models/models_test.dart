// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:weather_api/weather_api.dart';

void main() {
  group('WeatherApi: Location and Weather Model', () {
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

  group('Location', () {
    group('fromJson', () {
      test('returns correct Location object', () {
        expect(
          Location.fromJson(
            <String, dynamic>{
              'id': 4887398,
              'name': 'Chicago',
              'latitude': 41.85003,
              'longitude': -87.65005,
            },
          ),
          isA<Location>()
              .having((w) => w.id, 'id', 4887398)
              .having((w) => w.name, 'name', 'Chicago')
              .having((w) => w.latitude, 'latitude', 41.85003)
              .having((w) => w.longitude, 'longitude', -87.65005),
        );
      });
    });
  });

  group('Weather', () {
    group('fromJson', () {
      test('returns correct Weather object', () {
        expect(
          Weather.fromJson(
            <String, dynamic>{'temperature': 15.3, 'weathercode': 63},
          ),
          isA<Weather>()
              .having((w) => w.temperature, 'temperature', 15.3)
              .having((w) => w.weatherCode, 'weatherCode', 63),
        );
      });
    });
  });
}
