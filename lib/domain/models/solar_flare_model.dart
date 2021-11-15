class SolarFlareModel {
  final String flrId;
  final DateTime startTime;
  final DateTime? endTime;
  final String classType;
  final String sourceLocation;

  SolarFlareModel({
    required this.flrId,
    required this.startTime,
    this.endTime,
    required this.classType,
    required this.sourceLocation,
  });
}
