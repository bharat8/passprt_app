import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passprt_app/features/spot_details/bloc/spot_details_bloc.dart';
import 'package:passprt_app/features/spot_details/views/widgets/popular_treks_widget.dart';
import 'package:passprt_app/features/spot_details/views/widgets/spot_details_app_bar.dart';
import 'package:passprt_app/utils/constants/ui_constants.dart';
import 'package:passprt_app/utils/injector/injector.dart';
import 'package:passprt_app/utils/presentation/widgets/failure_widget.dart';
import 'package:passprt_app/utils/presentation/widgets/star_widget.dart';
import 'package:passprt_app/utils/presentation/widgets/ui_helpers.dart';

part 'widgets/spot_details_success.dart';
part 'widgets/spot_details_pointers.dart';

class SpotDetailsScreen extends StatelessWidget {
  const SpotDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SpotDetailsBloc>(),
      child: _SpotDetailsView(),
    );
  }
}

class _SpotDetailsView extends StatefulWidget {
  @override
  State<_SpotDetailsView> createState() => _SpotDetailsViewState();
}

class _SpotDetailsViewState extends State<_SpotDetailsView> {
  @override
  void initState() {
    context.read<SpotDetailsBloc>()
      ..add(GetSpotDetails())
      ..add(FetchPopularTreks());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<SpotDetailsBloc, SpotDetailsState>(
        buildWhen: (p, c) => p.spotDetailsStatus != c.spotDetailsStatus,
        builder: (context, state) {
          return state.spotDetailsStatus.maybeWhen(
            orElse: () {
              return const SizedBox.shrink();
            },
            loading: CircularProgressIndicator.adaptive,
            failure: (f) => failureHandler(f, () {
              context.read<SpotDetailsBloc>()
                ..add(GetSpotDetails())
                ..add(FetchPopularTreks());
            }),
            success: () => _SpotDetailsSucceess(state: state),
          );
        },
      ),
    );
  }
}
