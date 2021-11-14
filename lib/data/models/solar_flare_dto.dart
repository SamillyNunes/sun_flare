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
