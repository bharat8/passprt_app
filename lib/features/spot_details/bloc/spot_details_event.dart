part of 'spot_details_bloc.dart';

abstract class SpotDetailsEvent extends Equatable {
  const SpotDetailsEvent();

  @override
  List<Object?> get props => [];
}

class GetSpotDetails extends SpotDetailsEvent {}

class SetAppBarStatus extends SpotDetailsEvent {
  const SetAppBarStatus({
    required this.isCollapsed,
  });

  final bool isCollapsed;

  @override
  List<Object?> get props => [isCollapsed];
}

class FetchPopularTreks extends SpotDetailsEvent {}
