import 'package:sun_flare/data/models/get_storm_dto.dart';
import 'package:sun_flare/data/services/nasa_service.dart';
import 'package:sun_flare/domain/models/geo_storm_model.dart';
import 'package:sun_flare/domain/repositories/geo_storm_repository.dart';

class GeoStormRepoImpl extends GeoStormRepository {
  final NasaService _nasaService;

  GeoStormRepoImpl(this._nasaService);

  @override
  Future<List<GeoStormModel>> getStorms({
    required DateTime from,
    required DateTime to,
  }) async {
    // Getting geo stroms data from nasa api
    final List<GeoStormDTO> response =
        await _nasaService.getGeoStorms(from, to);

    // Mapping each dto to model and transforming into a list
    return response.map((e) => e.toModel()).toList();
  }
}
