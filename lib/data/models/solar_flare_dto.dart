import 'package:sun_flare/domain/models/solar_flare_model.dart';

class SolarFlareDTO {
  final String flrId;
  final DateTime startTime;
  final DateTime? endTime;
  final String classType;
  final String sourceLocation;
  final String link;

  SolarFlareDTO.fromApi(Map<String, dynamic> map)
      : flrId = map['flrID'],
        startTime = DateTime.parse(map['beginTime']),
        endTime =
            map['endTime'] != null ? DateTime.parse(map['endTime']) : null,
        classType = map['classType'],
        sourceLocation = map['sourceLocation'],
        link = map['link'];
}

extension SolarFlareMapper on SolarFlareDTO {
  SolarFlareModel toModel() {
    return SolarFlareModel(
      flrId: flrId,
      startTime: startTime,
      endTime: endTime,
      classType: classType,
      sourceLocation: sourceLocation,
    );
  }
}
