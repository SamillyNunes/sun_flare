import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:sun_flare/data/models/get_storm_dto.dart';
import 'package:sun_flare/data/models/solar_flare_dto.dart';

/// This class is responsible for Nasa API request
class NasaService {
  static const _baseUrl = 'https://kauai.ccmc.gsfc.nasa.gov';

  final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<List<GeoStormDTO>> getGeoStorms(DateTime from, DateTime to) async {
    final response = await _dio.get(
      '/DONKI/WS/get/GST',
      queryParameters: {
        'startDate': DateFormat('yyyy-MM-dd').format(from),
        'endDate': DateFormat('yyyy-MM-dd').format(to),
      },
    );

    // Convertendo os dados retornados como lista, mapeando-os para o tipo geostorm e retornando a listagem
    return (response.data as List).map((i) => GeoStormDTO.fromApi(i)).toList();
  }

  Future<List<SolarFlareDTO>> getFlares(DateTime from, DateTime to) async {
    final response = await _dio.get(
      '/DONKI/WS/get/FLR',
      queryParameters: {
        'startDate': DateFormat('yyyy-MM-dd').format(from),
        'endDate': DateFormat('yyyy-MM-dd').format(to),
      },
    );

    // Convertendo os dados retornados como lista, mapeando-os para o tipo geostorm e retornando a listagem
    return (response.data as List)
        .map((i) => SolarFlareDTO.fromApi(i))
        .toList();
  }
}
