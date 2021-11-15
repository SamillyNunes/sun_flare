import 'package:sun_flare/data/repositories/geo_storm_repo_impl.dart';
import 'package:sun_flare/data/repositories/solar_flare_repo_impl.dart';
import 'package:sun_flare/data/services/nasa_service.dart';
import 'package:sun_flare/domain/repositories/geo_storm_repository.dart';
import 'package:sun_flare/domain/repositories/solar_flare_repository.dart';

class RepositoryModule {
  static GeoStormRepository? _geoStormRepository;
  static SolarFlareRepository? _solarFlareRepository;

  static final NasaService _nasaService = NasaService();

  static GeoStormRepository geoStormRepository() {
    // ??= significa que, se for nulo, a variavel _geoStormRepository ira receber a instancia
    _geoStormRepository ??= GeoStormRepoImpl(_nasaService);

    return _geoStormRepository!;
  }

  static SolarFlareRepository solarFlareRepository() {
    // ??= significa que, se for nulo, a variavel _solarFlareRepository ira receber a instancia
    _solarFlareRepository ??= SolarFlareRepoImpl(_nasaService);

    return _solarFlareRepository!;
  }
}
