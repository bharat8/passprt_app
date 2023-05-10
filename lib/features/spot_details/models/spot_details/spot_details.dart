import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spot_details.g.dart';

@JsonSerializable()
class SpotDetails extends Equatable {
  const SpotDetails({
    this.bannerTitle = '',
    this.bannerImages = const [],
    this.rating = 0,
    this.description = '',
    this.details = const [],
    this.popularTreks = const [],
  });

  factory SpotDetails.fromJson(Map<String, dynamic> json) =>
      _$SpotDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$SpotDetailsToJson(this);

  final String bannerTitle;
  final List<String> bannerImages;
  final double rating;
  final String description;
  final List<String> details;
  final List<Trek> popularTreks;

  static const empty = SpotDetails();

  SpotDetails copyWith({
    String? bannerTitle,
    List<String>? bannerImages,
    double? rating,
    String? description,
    List<String>? details,
    List<Trek>? popularTreks,
  }) {
    return SpotDetails(
      bannerTitle: bannerTitle ?? this.bannerTitle,
      bannerImages: bannerImages ?? this.bannerImages,
      rating: rating ?? this.rating,
      description: description ?? this.description,
      details: details ?? this.details,
      popularTreks: popularTreks ?? this.popularTreks,
    );
  }

  @override
  List<Object> get props {
    return [
      bannerTitle,
      bannerImages,
      rating,
      description,
      details,
      popularTreks,
    ];
  }
}

@JsonSerializable()
class Trek extends Equatable {
  const Trek({
    this.title = '',
    this.thumbnail = '',
  });

  factory Trek.fromJson(Map<String, dynamic> json) => _$TrekFromJson(json);
  Map<String, dynamic> toJson() => _$TrekToJson(this);

  final String title;
  final String thumbnail;

  static const empty = Trek();

  Trek copyWith({
    String? title,
    String? thumbnail,
  }) {
    return Trek(
      title: title ?? this.title,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  @override
  List<Object> get props => [title, thumbnail];

  @override
  String toString() => 'Trek(title: $title, thumbnail: $thumbnail)';
}
