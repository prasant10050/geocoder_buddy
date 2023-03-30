// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gb_search_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GBSearchData _$GBSearchDataFromJson(Map<String, dynamic> json) => GBSearchData(
      placeId: json['place_id'] as int?,
      id: json['osm_id'] as int?,
      boundingbox: (json['boundingbox'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      displayName: json['display_name'] as String?,
      placeRank: json['place_rank'] as int?,
      importance: (json['importance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GBSearchDataToJson(GBSearchData instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'osm_id': instance.id,
      'boundingbox': instance.boundingbox,
      'lat': instance.lat,
      'lon': instance.lon,
      'display_name': instance.displayName,
      'place_rank': instance.placeRank,
      'importance': instance.importance,
    };
