class Job {
  String? jobId; // İş ilanı kimliği
  String title;
  String description;
  String companyName;
  String location;
  String userId; // İlanı veren kullanıcının kimliği
  String workType;
  String positionLevel;
  String department;
  List<String> candidateCriteria;
  String contactEmail;

  Job({
    this.jobId,
    required this.title,
    required this.description,
    required this.companyName,
    required this.location,
    required this.userId,
    required this.workType,
    required this.positionLevel,
    required this.department,
    required this.candidateCriteria,
    required this.contactEmail,
  });

  Map<String, dynamic> toMap() {
    return {
      'jobId': jobId,
      'title': title,
      'description': description,
      'companyName': companyName,
      'location': location,
      'userId': userId, // İlanı veren kullanıcının kimliği
      'workType': workType,
      'positionLevel': positionLevel,
      'department': department,
      'candidateCriteria': candidateCriteria,
      'contactEmail': contactEmail,
    };
  }

  factory Job.fromMap(Map<String, dynamic> map) {
    return Job(
      jobId: map['jobId'],
      title: map['title'],
      description: map['description'],
      companyName: map['companyName'],
      location: map['location'],
      userId: map['userId'], // İlanı veren kullanıcının kimliği
      workType: map['workType'],
      positionLevel: map['positionLevel'],
      department: map['department'],
      candidateCriteria: List<String>.from(map['candidateCriteria']),
      contactEmail: map['contactEmail'],
    );
  }
}
