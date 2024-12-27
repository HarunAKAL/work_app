import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/job_model.dart';

class JobService {
  final CollectionReference jobCollection = FirebaseFirestore.instance.collection('jobs');

  // Yeni iş ilanı ekleme
  Future<void> addJob(Job job) async {
    try {
      final docRef = jobCollection.doc(); // Yeni belge referansı oluştur
      job.jobId = docRef.id; // Belge kimliği jobId'ye atanıyor
      await docRef.set(job.toMap()); // Veriler Firestore'a kaydediliyor
    } catch (e) {
      print('İş ilanı eklerken hata oluştu: $e');
      throw Exception('İş ilanı eklenirken hata oluştu.'); // Kullanıcı dostu hata mesajı
    }
  }

  // Tüm iş ilanlarını dinleme
  Stream<List<Job>> getJobs() {
    return jobCollection.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => Job.fromMap(doc.data() as Map<String, dynamic>))
          .toList();
    });
  }

  // Belirli bir iş ilanını ID ile alma
  Future<Job> getJobById(String jobId) async {
    try {
      DocumentSnapshot doc = await jobCollection.doc(jobId).get();
      if (doc.exists) { // Belgenin varlığını kontrol et
        return Job.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        throw Exception('İş ilanı bulunamadı.'); // Belge bulunamazsa hata fırlat
      }
    } catch (e) {
      print('İş ilanını alırken hata oluştu: $e');
      throw Exception('İş ilanı alınırken hata oluştu.'); // Kullanıcı dostu hata mesajı
    }
  }
}
