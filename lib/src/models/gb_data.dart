// Geocoder Buddy Data Model
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'gb_data.g.dart';

GBData gbDataFromJson(String str) => GBData.fromJson(json.decode(str));

String gbDataToJson(GBData data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class GBData {
  GBData({
    required this.placeId,
    required this.osmType,
    required this.id,
    required this.lat,
    required this.lon,
    required this.placeRank,
    required this.importance,
    required this.displayName,
    required this.address,
    required this.boundingbox,
    required this.name,
    required this.addresstype,
    required this.category,
    required this.type,
  });

  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'osm_type')
  final String? osmType;
  @JsonKey(name: 'osm_id')
  final int? id;
  @JsonKey(name: 'lat')
  final String? lat;
  @JsonKey(name: 'lon')
  final String? lon;
  @JsonKey(name: 'place_rank')
  final int? placeRank;
  @JsonKey(name: 'importance')
  final double? importance;
  @JsonKey(name: 'display_name')
  final String? displayName;
  @JsonKey(name: 'address')
  final Address? address;
  @JsonKey(name: 'boundingbox')
  final List<String>? boundingbox;

  //category
  @JsonKey(name: 'category')
  final String? category;

  //type
  @JsonKey(name: 'type')
  final String? type;

  //addresstype
  @JsonKey(name: 'addresstype')
  final String? addresstype;

  //name
  @JsonKey(name: 'name')
  final String? name;

  factory GBData.fromJson(Map<String, dynamic> json) => _$GBDataFromJson(json);

  Map<String, dynamic> toJson() => _$GBDataToJson(this);

/*  factory GBData.fromJson(Map<String, dynamic> json) => GBData(
        placeId: json["place_id"],
        osmType: json["osm_type"],
        id: json["osm_id"],
        lat: json["lat"],
        lon: json["lon"],
        placeRank: json["place_rank"],
        importance: json["importance"].toDouble(),
        displayName: json["display_name"],
        address: Address.fromJson(json["address"]),
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "place_id": placeId,
        "osm_type": osmType,
        "osm_id": id,
        "lat": lat,
        "lon": lon,
        "place_rank": placeRank,
        "importance": importance,
        "display_name": displayName,
        "address": address.toJson(),
        "boundingbox": List<dynamic>.from(boundingbox.map((x) => x)),
      };*/
}

@JsonSerializable(explicitToJson: true)
class Address {
  Address({
    required this.road,
    required this.village,
    required this.county,
    required this.stateDistrict,
    required this.state,
    required this.iso31662Lvl4,
    required this.postcode,
    required this.country,
    required this.countryCode,
    required this.houseNumber,
    required this.city,
    required this.municipality,
    required this.suburb,
    required this.cityDistrict,
    required this.province,
    required this.town,
  });

  @JsonKey(name: 'road')
  final String? road;
  @JsonKey(name: 'village')
  final String? village;
  @JsonKey(name: 'county')
  final String? county;
  @JsonKey(name: 'suburb')
  final String? suburb;
  @JsonKey(name: 'state_district')
  final String? stateDistrict;
  @JsonKey(name: 'city_district')
  final String? cityDistrict;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'ISO3166-2-lvl4')
  final String? iso31662Lvl4;
  @JsonKey(name: 'postcode')
  final String? postcode;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'municipality')
  final String? municipality;
  @JsonKey(name: 'house_number')
  final String? houseNumber;
  @JsonKey(name: 'province')
  final String? province;
  @JsonKey(name: 'town')
  final String? town;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

/*factory Address.fromJson(Map<String, dynamic> json) => Address(
        road: json["road"],
        village: json["village"],
        county: json["county"],
        stateDistrict: json["state_district"],
        state: json["state"],
        iso31662Lvl4: json["ISO3166-2-lvl4"],
        postcode: json["postcode"],
        country: json["country"],
        countryCode: json["country_code"],
      );

  Map<String, dynamic> toJson() => {
        "road": road,
        "village": village,
        "county": county,
        "state_district": stateDistrict,
        "state": state,
        "ISO3166-2-lvl4": iso31662Lvl4,
        "postcode": postcode,
        "country": country,
        "country_code": countryCode,
      };*/
}
