// ignore_for_file: lines_longer_than_80_chars

part of 'spot_details_bloc.dart';

class SpotDetailsState extends Equatable {
  const SpotDetailsState({
    this.spotDetailsStatus = const Status.initial(),
    this.spotDetails = SpotDetails.empty,
    this.collapsed = false,
    this.popularTreks = const [],
    this.popularTreksStatus = const Status.initial(),
    this.hasPopularTreksReachedMax = false,
  });

  final Status spotDetailsStatus;
  final SpotDetails spotDetails;

  final bool collapsed;

  final List<Trek> popularTreks;
  final Status popularTreksStatus;
  final bool hasPopularTreksReachedMax;

  @override
  List<Object> get props {
    return [
      spotDetailsStatus,
      spotDetails,
      collapsed,
      popularTreks,
      popularTreksStatus,
      hasPopularTreksReachedMax,
    ];
  }

  SpotDetailsState copyWith({
    Status? spotDetailsStatus,
    SpotDetails? spotDetails,
    bool? collapsed,
    List<Trek>? popularTreks,
    Status? popularTreksStatus,
    bool? hasPopularTreksReachedMax,
  }) {
    return SpotDetailsState(
      spotDetailsStatus: spotDetailsStatus ?? this.spotDetailsStatus,
      spotDetails: spotDetails ?? this.spotDetails,
      collapsed: collapsed ?? this.collapsed,
      popularTreks: popularTreks ?? this.popularTreks,
      popularTreksStatus: popularTreksStatus ?? this.popularTreksStatus,
      hasPopularTreksReachedMax:
          hasPopularTreksReachedMax ?? this.hasPopularTreksReachedMax,
    );
  }

  @override
  String toString() {
    return 'SpotDetailsState(spotDetailsStatus: $spotDetailsStatus, spotDetails: $spotDetails, collapsed: $collapsed, popularTreks: $popularTreks, popularTreksStatus: $popularTreksStatus, hasPopularTreksReachedMax: $hasPopularTreksReachedMax)';
  }
}
