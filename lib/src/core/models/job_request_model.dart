class JobRequestModel {
  final String jobId;
  final String userId;
  final String jobType;
  final DateTime requestDate;
  final String status;

  JobRequestModel({
    required this.jobId,
    required this.userId,
    required this.jobType,
    required this.requestDate,
    required this.status,
  });

  Map<String, dynamic> toJson() {
    return {
      'jobId': jobId,
      'userId': userId,
      'jobType': jobType,
      'requestDate': requestDate.toIso8601String(),
      'status': status,
    };
  }

  factory JobRequestModel.fromJson(Map<String, dynamic> json) {
    return JobRequestModel(
      jobId: json['jobId'],
      userId: json['userId'],
      jobType: json['jobType'],
      requestDate: DateTime.parse(json['requestDate']),
      status: json['status'],
    );
  }
}