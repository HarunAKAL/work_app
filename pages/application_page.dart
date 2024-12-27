import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../services/auth_service.dart';

class ApplicationPage extends StatefulWidget {
  final String jobId;
  final String email;

  const ApplicationPage({super.key, required this.jobId, required this.email});

  @override
  ApplicationPageState createState() => ApplicationPageState();
}

class ApplicationPageState extends State<ApplicationPage> {
  final AuthService authService = AuthService();

  final TextEditingController coverLetterController = TextEditingController();
  String? cvFilePath;
  String? jobTitle;
  String? companyName;
  String? userName;

  Future<void> _getJobDetails() async {
    try {
      DocumentSnapshot jobDoc = await FirebaseFirestore.instance
          .collection('jobs')
          .doc(widget.jobId)
          .get();

      if (jobDoc.exists) {
        setState(() {
          jobTitle = jobDoc['title'];
          companyName = jobDoc['companyName'];
        });
      }

      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(authService.currentUser!.uid)
          .get();
      if (userDoc.exists) {
        setState(() {
          userName = userDoc['name'];
        });
      }
    } catch (e) {
      print('İş bilgisi alınırken hata oluştu: $e');
    }
  }

  Future<void> _pickCV() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['doc', 'pdf'],
    );

    if (result != null) {
      setState(() {
        cvFilePath = result.files.single.path;
      });
    }
  }

  Future<void> _sendEmailWithAttachment() async {
    if (cvFilePath == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lütfen bir CV seçin.')),
      );
      return;
    }

    Email email = Email(
      body: '''
Merhaba,

Bu e-posta üzerinden iş başvurusunda bulunuyorum. 
Lütfen ekteki CV dosyasını inceleyin.

Saygılar,
$userName
''',
      subject: 'İş Başvurusu: $jobTitle',
      recipients: [widget.email],
      attachmentPaths: [cvFilePath!],
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Başvurunuz başarıyla gönderildi.')),
      );
      Navigator.pop(context);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('E-posta gönderiminde hata oluştu: $e')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _getJobDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Row(
          children: [
            const Icon(Icons.work, size: 30),
            const SizedBox(width: 10),
            const Text(
              'Başvuru Yap',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (jobTitle != null && companyName != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'İş Başlığı: $jobTitle',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Şirket: $companyName',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ön Yazı',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: coverLetterController,
                    decoration: InputDecoration(
                      hintText: 'Neden uygun olduğunuzu yazın',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.blue.shade50,
                    ),
                    maxLines: 5,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'CV Yükle',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton.icon(
                    onPressed: _pickCV,
                    icon: const Icon(Icons.attach_file),
                    label: Text(cvFilePath == null
                        ? 'CV Seç'
                        : 'Seçilen CV: ${cvFilePath!.split('/').last}'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: _sendEmailWithAttachment,
                    icon: const Icon(Icons.send),
                    label: const Text('Başvuruyu Gönder'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 5,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
