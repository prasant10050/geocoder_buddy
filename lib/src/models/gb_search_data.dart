import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'gb_search_data.g.dart';

List<GBSearchData> bgSearchDataFromJson(String str) => List<GBSearchData>.from(
    json.decode(str).map((x) => GBSearchData.fromJson(x)));

String bgSearchDataToJson(List<GBSearchData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable(explicitToJson: true)
class GBSearchData {
  GBSearchData({
    required this.placeId,
    required this.id,
    required this.boundingbox,
    required this.lat,
    required this.lon,
    required this.displayName,
    required this.placeRank,
    required this.importance,
  });
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'osm_id')
  final int? id;
  @JsonKey(name: 'boundingbox')
  final List<String>? boundingbox;
  @JsonKey(name: 'lat')
  final String lat;
  @JsonKey(name: 'lon')
  final String lon;
  @JsonKey(name: 'display_name')
  final String? displayName;
  @JsonKey(name: 'place_rank')
  final int? placeRank;
  @JsonKey(name: 'importance')
  final double? importance;
  factory GBSearchData.fromJson(Map<String, dynamic> json) =>
      _$GBSearchDataFromJson(json);

  Map<String, dynamic> toJson() => _$GBSearchDataToJson(this);

  /*factory GBSearchData.fromJson(Map<String, dynamic> json) => GBSearchData(
        placeId: json["place_id"],
        id: json["osm_id"],
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
        lat: json["lat"],
        lon: json["lon"],
        displayName: json["display_name"],
        placeRank: json["place_rank"],
        importance: json["importance"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "place_id": placeId,
        "osm_id": id,
        "boundingbox": List<dynamic>.from(boundingbox.map((x) => x)),
        "lat": lat,
        "lon": lon,
        "display_name": displayName,
        "place_rank": placeRank,
        "importance": importance,
      };*/
}
