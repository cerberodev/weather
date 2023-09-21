import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()

/// {@template Location}
/// Location model represents the Location of the city search.
/// {@endtemplate}
class Location {
  /// {@macro Location}
  const Location({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  /// The Location factory.
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  /// The Location [id].
  final int id;

  /// The Location [name].
  final String name;

  /// The Location [latitude].
  final double latitude;

  /// The Location [longitude].
  final double longitude;
}
