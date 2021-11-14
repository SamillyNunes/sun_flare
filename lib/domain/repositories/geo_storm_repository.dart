import 'package:sun_flare/domain/models/geo_storm_model.dart';

abstract class GeoStormRepository {
  Future<List<GeoStormModel>> getStorms({
    required DateTime from,
    required DateTime to,
  });
}
