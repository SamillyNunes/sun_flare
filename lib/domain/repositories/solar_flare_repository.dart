import 'package:sun_flare/domain/models/solar_flare_model.dart';

abstract class SolarFlareRepository {
  Future<List<SolarFlareModel>> getFlares({
    required DateTime from,
    required DateTime to,
  });
}
