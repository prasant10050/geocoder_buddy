// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gb_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GBData _$GBDataFromJson(Map<String, dynamic> json) => GBData(
      placeId: json['place_id'] as int?,
      osmType: json['osm_type'] as String?,
      id: json['osm_id'] as int?,
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      placeRank: json['place_rank'] as int?,
      importance: (json['importance'] as num?)?.toDouble(),
      displayName: json['display_name'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      boundingbox: (json['boundingbox'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GBDataToJson(GBData instance) => <String, dynamic>{
      'place_id': instance.placeId,
      'osm_type': instance.osmType,
      'osm_id': instance.id,
      'lat': instance.lat,
      'lon': instance.lon,
      'place_rank': instance.placeRank,
      'importance': instance.importance,
      'display_name': instance.displayName,
      'address': instance.address,
      'boundingbox': instance.boundingbox,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      road: json['road'] as String?,
      village: json['village'] as String?,
      county: json['county'] as String?,
      stateDistrict: json['state_district'] as String?,
      state: json['state'] as String?,
      iso31662Lvl4: json['ISO3166-2-lvl4'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      countryCode: json['country_code'] as String?,
      houseNumber: json['house_number'] as String?,
      city: json['city'] as String?,
      municipality: json['municipality'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'road': instance.road,
      'village': instance.village,
      'county': instance.county,
      'state_district': instance.stateDistrict,
      'state': instance.state,
      'ISO3166-2-lvl4': instance.iso31662Lvl4,
      'postcode': instance.postcode,
      'country': instance.country,
      'country_code': instance.countryCode,
      'city': instance.city,
      'municipality': instance.municipality,
      'house_number': instance.houseNumber,
    };
