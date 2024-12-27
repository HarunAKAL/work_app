import 'dart:io';

class Application {
  String? applicationId; // Firestore tarafından otomatik atanacak
  String userId;
  String jobId; // Bu alan dışarıdan alınacak
  String coverLetter;
  String? cvFilePath; // Dosya yolunu saklayacağız
  File? cvFile; // Kullanıcı tarafından seçilen dosya
  String userName;
  String jobTitle;
  String companyName;

  Application({
    this.applicationId,
    required this.userId,
    required this.jobId,
    required this.coverLetter,
    required this.cvFilePath,
    required this.cvFile, 
    required this.userName,
    required this.jobTitle,
    required this.companyName,

  });

  Map<String, dynamic> toMap() {
    return {
      'applicationId': applicationId, // Firestore'dan alınacak
      'userId': userId,
      'jobId': jobId,
      'coverLetter': coverLetter,
      'cvFilePath': cvFilePath, // Firestore'a sadece dosya yolu kaydedilecek
      'userName': userName,
      'jobTitle': jobTitle,
      'companyName': companyName,
    };
  }

  factory Application.fromMap(Map<String, dynamic> map) {
    return Application(
      applicationId: map['applicationId'],
      userId: map['userId'],
      jobId: map['jobId'],
      coverLetter: map['coverLetter'],
      cvFilePath: map['cvFilePath'],
      cvFile: null, // Firestore'dan `File` tipi okunamaz
      userName: map['userName'],
      jobTitle: map['jobTitle'],
      companyName: map['companyName'],

    );
  }
}
