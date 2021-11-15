import 'package:sun_flare/domain/models/geo_storm_model.dart';

class GeoStormDTO {
  final String gstId;
  final DateTime startTime;
  final String link;

  GeoStormDTO.fromApi(Map<String, dynamic> map)
      : gstId = map['gstId'],
        startTime = map['startTime'],
        link = map['link'];
}

/// Mapeando o DTO para os models da camada de dominio
extension GeoStormMapper on GeoStormDTO {
  GeoStormModel toModel() {
    return GeoStormModel(gstId: gstId, startTime: startTime);
  }
}
