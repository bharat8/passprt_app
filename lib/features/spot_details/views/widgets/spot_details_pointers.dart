part of '../spot_details_screen.dart';

class SpotDetailPointers extends StatelessWidget {
  const SpotDetailPointers({
    required this.details,
    super.key,
  });
  final List<String> details;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: details.map((details) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: UIConstants.baseMargin * 3,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: UIConstants.baseMargin * 0.8,
                ),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.black45,
                ),
              ),
              horizontalSpaceRegular,
              Expanded(
                child: Text(
                  details,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w700,
                      ),
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
