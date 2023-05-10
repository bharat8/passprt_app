// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotDetails _$SpotDetailsFromJson(Map json) => SpotDetails(
      bannerTitle: json['bannerTitle'] as String? ?? '',
      bannerImages: (json['bannerImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      description: json['description'] as String? ?? '',
      details: (json['details'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      popularTreks: (json['popularTreks'] as List<dynamic>?)
              ?.map((e) => Trek.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SpotDetailsToJson(SpotDetails instance) =>
    <String, dynamic>{
      'bannerTitle': instance.bannerTitle,
      'bannerImages': instance.bannerImages,
      'rating': instance.rating,
      'description': instance.description,
      'details': instance.details,
      'popularTreks': instance.popularTreks.map((e) => e.toJson()).toList(),
    };

Trek _$TrekFromJson(Map json) => Trek(
      title: json['title'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$TrekToJson(Trek instance) => <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
    };
