import 'package:ram_app/src/data/consts/field_names.dart' as fn;
import 'package:ram_app/src/domain/entities/location.dart';

class LocationModel extends Location {
  final int id;
  final String name;
  final String type;
  final String dimension;
  final List<String> residents;
  final String url;
  final String created;

  LocationModel({
    this.id,
    this.name,
    this.type,
    this.dimension,
    this.residents,
    this.url,
    this.created,
  });

  DateTime get dateTimeCreated => DateTime.tryParse(created);

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return LocationModel(
      id: json[fn.id] as int,
      name: json[fn.name] as String,
      type: json[fn.type] as String,
      dimension: json[fn.dimension] as String,
      residents: (json[fn.residents] as List).map((e) => e as String).toList(),
      url: json[fn.url] as String,
      created: json[fn.created] as String);
}
