part of '../spot_details_screen.dart';

class _SpotDetailsSucceess extends StatefulWidget {
  const _SpotDetailsSucceess({required this.state});
  final SpotDetailsState state;

  @override
  State<_SpotDetailsSucceess> createState() => _SpotDetailsSucceessState();
}

class _SpotDetailsSucceessState extends State<_SpotDetailsSucceess> {
  late ScrollController _scrollController;
  late CarouselController _carouselController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_scrollListener);
    _carouselController = CarouselController();
    super.initState();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels > 30) {
      _carouselController.stopAutoPlay();

      context.read<SpotDetailsBloc>().add(
            const SetAppBarStatus(
              isCollapsed: true,
            ),
          );
    } else {
      _carouselController.startAutoPlay();

      context.read<SpotDetailsBloc>().add(
            const SetAppBarStatus(
              isCollapsed: false,
            ),
          );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        slivers: [
          BlocBuilder<SpotDetailsBloc, SpotDetailsState>(
            buildWhen: (p, c) => p.collapsed != c.collapsed,
            builder: (context, state) {
              return SpotDetailsAppBar(
                spotDetails: widget.state.spotDetails,
                carouselController: _carouselController,
                isAppBarCollapsed: state.collapsed,
              );
            },
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: UIConstants.baseMargin * 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      verticalSpaceRegular,
                      StarWidget(
                        rating: widget.state.spotDetails.rating,
                      ),
                      verticalSpaceRegular,
                      Text(
                        widget.state.spotDetails.description,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      verticalSpaceMedium,
                      SpotDetailPointers(
                        details: widget.state.spotDetails.details,
                      ),
                      Text(
                        'Popular Treks',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      verticalSpaceRegular,
                    ],
                  ),
                ),
                BlocBuilder<SpotDetailsBloc, SpotDetailsState>(
                  builder: (context, state) {
                    return PopularTreks(
                      popularTreks: state.popularTreks,
                      fetchMore: () => context
                          .read<SpotDetailsBloc>()
                          .add(FetchPopularTreks()),
                      reachedMax: state.hasPopularTreksReachedMax,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
