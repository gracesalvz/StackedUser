
import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable()
class Geo {
  final String lat;
  final String lng;

  Geo({
    required this.lat,
    required this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  /// Connect the generated [_$GeoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$GeoToJson(this);
}