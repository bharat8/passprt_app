// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:passprt_app/features/spot_details/models/spot_details/spot_details.dart';
import 'package:passprt_app/utils/constants/images_constant.dart';
import 'package:passprt_app/utils/constants/string_constants.dart';
import 'package:passprt_app/utils/infrastructure/core/decoders.dart';
import 'package:passprt_app/utils/infrastructure/core/failures/failures.dart';

abstract class ISpotDetailsRepository {
  Future<Either<Failure, SpotDetails>> getSpotDetails();
  Future<Either<Failure, List<Trek>>> getPopularTreks({
    int startIndex = 0,
  });
}

@LazySingleton(as: ISpotDetailsRepository)
class SpotDetailsRepository extends ISpotDetailsRepository {
  @override
  Future<Either<Failure, SpotDetails>> getSpotDetails() async {
    try {
      final response = await rootBundle.loadString(
        AssetsConstant.placeDetails,
      );

      return right(
        Decoders.decodeSpotDetails(response),
      );
    } catch (e) {
      return left(
        const Failure.value(
          ErrorStringConstants.errorWhileProcessing,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Trek>>> getPopularTreks({
    int startIndex = 0,
  }) async {
    try {
      final response = await rootBundle.loadString(
        AssetsConstant.placeDetails,
      );

      final details = Decoders.decodeSpotDetails(response);

      if (startIndex + 3 > details.popularTreks.length) {
        return right([]);
      }

      await Future.delayed(Duration(seconds: startIndex == 0 ? 1 : 2), () {});

      return right(
        details.popularTreks.sublist(startIndex, startIndex + 3),
      );
    } catch (e) {
      return left(
        const Failure.value(
          ErrorStringConstants.errorWhileProcessing,
        ),
      );
    }
  }
}
