import 'package:weather/app/app.dart';
import 'package:weather/bootstrap.dart';
import 'package:weather_repository/weather_repository.dart';

void main() {
  bootstrap(
    () => App(
      weatherRepository: WeatherRepository(),
    ),
  );
}
