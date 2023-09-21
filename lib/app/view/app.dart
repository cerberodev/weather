import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/l10n/l10n.dart';
import 'package:weather/theme/theme.dart';
import 'package:weather/weather/weather.dart';
import 'package:weather_repository/weather_repository.dart';

class App extends StatelessWidget {
  const App({
    required WeatherRepository weatherRepository,
    super.key,
  }) : _weatherRepository = weatherRepository;

  final WeatherRepository _weatherRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _weatherRepository,
      child: BlocProvider(
        create: (_) => ThemeCubit(),
        child: const WeatherAppView(),
      ),
    );
  }
}

class WeatherAppView extends StatelessWidget {
  const WeatherAppView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<ThemeCubit, Color>(
      builder: (context, color) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              titleTextStyle: GoogleFonts.rajdhaniTextTheme(textTheme)
                  .apply(bodyColor: Colors.white)
                  .titleLarge,
            ),
            primaryColor: color,
            textTheme: GoogleFonts.rajdhaniTextTheme(),
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const WeatherPage(),
        );
      },
    );
  }
}
