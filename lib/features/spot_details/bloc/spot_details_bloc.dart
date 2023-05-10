import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:passprt_app/features/spot_details/models/spot_details/spot_details.dart';
import 'package:passprt_app/features/spot_details/repository/spot_details_repository.dart';
import 'package:passprt_app/utils/application/core/event_transformers/throttle_droppable.dart';
import 'package:passprt_app/utils/application/core/status/status.dart';

part 'spot_details_event.dart';
part 'spot_details_state.dart';

@injectable
class SpotDetailsBloc extends Bloc<SpotDetailsEvent, SpotDetailsState> {
  SpotDetailsBloc(this._repository) : super(const SpotDetailsState()) {
    on<GetSpotDetails>(_onGetSpotDetails);
    on<SetAppBarStatus>(
      _onSetAppBarStatus,
      transformer: throttleDroppable(),
    );
    on<FetchPopularTreks>(
      _onFetchPopularTreks,
      transformer: throttleDroppable(),
    );
  }

  final ISpotDetailsRepository _repository;

  Future<void> _onGetSpotDetails(
    GetSpotDetails event,
    Emitter<SpotDetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        spotDetailsStatus: const Status.loading(),
      ),
    );

    final failureOrSpotDetails = await _repository.getSpotDetails();

    emit(
      failureOrSpotDetails.fold(
        (failure) => state.copyWith(
          spotDetailsStatus: Status.failure(failure),
        ),
        (spotDetails) => state.copyWith(
          spotDetailsStatus: const Status.success(),
          spotDetails: spotDetails,
        ),
      ),
    );
  }

  void _onSetAppBarStatus(
    SetAppBarStatus event,
    Emitter<SpotDetailsState> emit,
  ) {
    emit(
      state.copyWith(
        collapsed: event.isCollapsed,
      ),
    );
  }

  Future<void> _onFetchPopularTreks(
    FetchPopularTreks event,
    Emitter<SpotDetailsState> emit,
  ) async {
    if (state.hasPopularTreksReachedMax) return;

    if (state.popularTreksStatus == const Status.initial()) {
      emit(
        state.copyWith(
          popularTreksStatus: const Status.loading(),
        ),
      );

      final failureOrTreks = await _repository.getPopularTreks();

      return emit(
        failureOrTreks.fold(
          (failure) => state.copyWith(
            popularTreksStatus: Status.failure(failure),
          ),
          (treks) => state.copyWith(
            popularTreksStatus: const Status.success(),
            hasPopularTreksReachedMax: treks.isEmpty,
            popularTreks: treks,
          ),
        ),
      );
    }

    final failureOrTreks = await _repository.getPopularTreks(
      startIndex: state.popularTreks.length + 1,
    );

    emit(
      failureOrTreks.fold(
        (failure) => state.copyWith(
          popularTreksStatus: Status.failure(failure),
        ),
        (treks) => state.copyWith(
          popularTreksStatus: const Status.success(),
          popularTreks: List.of(state.popularTreks)..addAll(treks),
          hasPopularTreksReachedMax: treks.isEmpty,
        ),
      ),
    );
  }
}
