import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import '../models/application_model.dart'; // Application modelinin yolu
import 'package:firebase_storage/firebase_storage.dart'; // Firebase Storage

class ApplicationService {
  final CollectionReference _applicationCollection =
      FirebaseFirestore.instance.collection('applications');

  Future<void> applyToJob(Application application) async {
    // Yeni belge referansı oluştur
    final docRef = _applicationCollection.doc();

    // applicationId'yi belge kimliğine ata
    application.applicationId = docRef.id; 

    // Dosyayı Firebase Storage'a yükle
    if (application.cvFile != null) {
      application.cvFilePath = await uploadFile(application.cvFile!);
    }

    try {
      // Verileri Firestore'a kaydet
      await docRef.set(application.toMap());
    } catch (e) {
      print("Başvuru kaydedilirken hata oluştu: $e");
      throw Exception('Başvuru kaydedilirken bir hata oluştu.');
    }
  }

  Stream<List<Application>> getApplicationsByJobId(String jobId) {
    return _applicationCollection
        .where('jobId', isEqualTo: jobId)
        .snapshots()
        .map((snapshot) {
          return snapshot.docs.map((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return Application.fromMap(data);
          }).toList();
        });
  }

  // Dosya yükleme fonksiyonu
  Future<String?> uploadFile(File cvFile) async {
    try {
      // Firebase Storage referansı ve dosya adı
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('cvs/${cvFile.path.split('/').last}');
      
      // Dosyayı yükle
      final uploadTask = await storageRef.putFile(cvFile);

      // Yüklenen dosyanın URL'sini al
      final fileUrl = await uploadTask.ref.getDownloadURL();
      return fileUrl;
    } catch (e) {
      print('Dosya yüklenirken hata oluştu: $e');
      return null;
    }
  }
}
