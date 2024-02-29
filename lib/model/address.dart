import 'package:json_annotation/json_annotation.dart';
import 'package:stacked_app/model/geo.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  final String suite;
  final String street;
  final String city;
  final String zipcode;
  final Geo geo;

Address({
    required this.suite,
    required this.street,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  /// Connect the generated [_$AddressToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AddressToJson(this);
  }