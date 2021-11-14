class GeoStormDTO {
  final String gstId;
  final DateTime startTime;
  final String link;

  GeoStormDTO.fromApi(Map<String, dynamic> map)
      : gstId = map['gstId'],
        startTime = map['startTime'],
        link = map['link'];
}
