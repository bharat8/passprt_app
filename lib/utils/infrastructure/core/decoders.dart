import 'dart:convert';

import 'package:passprt_app/features/spot_details/models/spot_details/spot_details.dart';
import 'package:passprt_app/utils/infrastructure/core/failures/failures.dart';

/// Convert json response into models
class Decoders {
  const Decoders._();

  static SpotDetails decodeSpotDetails(String body) {
    try {
      final map = json.decode(body) as Map<String, dynamic>;
      return SpotDetails.fromJson(map);
    } catch (e) {
      throw Failure.value(e.toString());
    }
  }
}
