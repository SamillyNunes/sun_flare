import 'package:sun_flare/domain/models/geo_storm_model.dart';
import 'package:sun_flare/domain/models/solar_flare_model.dart';

class SolarActivitiesModel {
  final SolarFlareModel lastFlare;
  final GeoStormModel lastStorm;

  SolarActivitiesModel({
    required this.lastFlare,
    required this.lastStorm,
  });
}
