import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  final String name;
  final String catchPhrase;
  final String bs;

Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  /// Connect the generated [_$CompanyToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
  }