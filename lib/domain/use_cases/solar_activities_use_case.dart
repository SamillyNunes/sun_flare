import 'package:sun_flare/domain/models/solar_activities_model.dart';
import 'package:sun_flare/domain/repositories/geo_storm_repository.dart';
import 'package:sun_flare/domain/repositories/solar_flare_repository.dart';

class SolarActivitiesUseCase {
  final GeoStormRepository _geoStormRepository;
  final SolarFlareRepository _solarFlareRepository;

  SolarActivitiesUseCase(this._geoStormRepository, this._solarFlareRepository);

  Future<SolarActivitiesModel> getLastSolarActivities() async {
    final fromDate = DateTime.now().subtract(const Duration(days: 365));
    final toDate = DateTime.now();

    final storms =
        await _geoStormRepository.getStorms(from: fromDate, to: toDate);
    final flares =
        await _solarFlareRepository.getFlares(from: fromDate, to: toDate);

    return SolarActivitiesModel(lastFlare: flares.last, lastStorm: storms.last);
  }
}
