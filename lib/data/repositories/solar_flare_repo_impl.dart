import 'package:sun_flare/data/models/solar_flare_dto.dart';
import 'package:sun_flare/data/services/nasa_service.dart';
import 'package:sun_flare/domain/models/solar_flare_model.dart';
import 'package:sun_flare/domain/repositories/solar_flare_repository.dart';

class SolarFlareRepoImpl extends SolarFlareRepository {
  final NasaService _nasaService;

  SolarFlareRepoImpl(this._nasaService);

  @override
  Future<List<SolarFlareModel>> getFlares({
    required DateTime from,
    required DateTime to,
  }) async {
    final List<SolarFlareDTO> response = await _nasaService.getFlares(from, to);

    return response.map((e) => e.toModel()).toList();
  }
}
