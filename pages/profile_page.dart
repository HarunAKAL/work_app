import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:work_app/generated/l10n.dart';
import '../services/auth_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final AuthService _authService = AuthService();
  bool _isUploading = false;
  String? profilePhotoUrl;

  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<dynamic>? myJobs = []; 
  List<dynamic>? appliedJobs = []; 
  bool _isMyJobsExpanded = false; 
  bool _isAppliedJobsExpanded = false; 

  Future<void> _updateUserInfo(String field, String value) async {
    try {
      await _firestore.collection('users').doc(_authService.currentUser?.uid).update({field: value});
    } catch (e) {
      print('${S.of(context).profilesos1} $e');
    }
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      File imageFile = File(image.path);
      String fileName = 'profile_photos/${_authService.currentUser?.uid}.jpg';
      
      setState(() => _isUploading = true);

      try {
        // Fotoğrafı Firebase Storage'a yükle
        await _storage.ref(fileName).putFile(imageFile);
        String downloadUrl = await _storage.ref(fileName).getDownloadURL();

        // URL'yi Firestore'daki kullanıcı belgesine kaydet
        await _updateUserInfo('profilePhotoUrl', downloadUrl);

        setState(() {
          profilePhotoUrl = downloadUrl;
          _isUploading = false;
        });
      } catch (e) {
        print('${S.of(context).profilesos2} $e');
        setState(() => _isUploading = false);
      }
    } else {
      setState(() => _isUploading = false);
    }
  }

  Future<void> _deleteImage() async {
    if (profilePhotoUrl != null) {
      try {
        // Storage'daki fotoğrafı sil
        String fileName = 'profile_photos/${_authService.currentUser?.uid}.jpg';
        await _storage.ref(fileName).delete();

        // Firestore'daki profilePhotoUrl bilgisini temizle
        await _updateUserInfo('profilePhotoUrl', '');

        setState(() {
          profilePhotoUrl = null;
        });
      } catch (e) {
        print('${S.of(context).profilesos3} $e');
      }
    }
  }

  void _showEditDialog(String field, String currentValue) {
    TextEditingController controller = TextEditingController(text: currentValue);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).EditTheInformation),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(labelText: S.of(context).newvalue),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(S.of(context).cancel),
            ),
            TextButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  _updateUserInfo(field, controller.text);
                  Navigator.of(context).pop();
                } else {
                  // Boş alan kontrolü
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(S.of(context).pleaseenteravalue)),
                  );
                }
              },
              child: Text(S.of(context).update),
            ),
          ],
        );
      },
    );
  }

  Future<void> _fetchJobs() async {
    // Kullanıcının verdiği ilanları al
    final myJobsSnapshot = await _firestore.collection('jobs').where('userId', isEqualTo: _authService.currentUser?.uid).get();
    setState(() {
      myJobs = myJobsSnapshot.docs.isNotEmpty ? myJobsSnapshot.docs.map((doc) => doc.data()).toList() : [];
    });

    // Kullanıcının başvurduğu ilanları al
    final appliedJobsSnapshot = await _firestore.collection('applications').where('userId', isEqualTo: _authService.currentUser?.uid).get();
    setState(() {
      appliedJobs = appliedJobsSnapshot.docs.isNotEmpty ? appliedJobsSnapshot.docs.map((doc) => doc.data()).toList() : [];
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchJobs(); // İşleri yükle
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).profile, style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(  // SingleChildScrollView eklendi
          child: StreamBuilder<DocumentSnapshot>( 
            stream: _firestore.collection('users').doc(_authService.currentUser?.uid).snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasData && snapshot.data != null) {
                var userData = snapshot.data!.data() as Map<String, dynamic>;
                profilePhotoUrl = userData['profilePhotoUrl'] ?? _authService.currentUser?.photoURL;

                String name = userData['name']?.toString() ?? S.of(context).Unspecified;
                String age = userData['age']?.toString() ?? S.of(context).Unspecified;
                String gender = userData['gender']?.toString() ?? S.of(context).Unspecified;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        _isUploading
                            ? const CircularProgressIndicator()
                            : GestureDetector(
                                onTap: _pickImage,
                                child: CircleAvatar(
                                  radius: 70,
                                  backgroundImage: profilePhotoUrl != null
                                      ? NetworkImage(profilePhotoUrl!)
                                      : const AssetImage('assets/default_avatar.png') as ImageProvider,
                                  child: profilePhotoUrl == null
                                      ? const Icon(Icons.camera_alt, size: 50)
                                      : null,
                                ),
                              ),
                        IconButton(
                          icon: const Icon(Icons.brush, size: 30, color: Colors.white),
                          onPressed: _pickImage,
                          tooltip: S.of(context).profilephoto,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${S.of(context).name} $name', style: const TextStyle(fontSize: 18)),
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () => _showEditDialog('name', name),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${S.of(context).age} $age', style: const TextStyle(fontSize: 18)),
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () => _showEditDialog('age', age),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${S.of(context).Gender} $gender', style: const TextStyle(fontSize: 18)),
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () => _showEditDialog('gender', gender),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isMyJobsExpanded = !_isMyJobsExpanded;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(S.of(context).MyAds, style: TextStyle(fontSize: 22)),
                          Icon(_isMyJobsExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    if (_isMyJobsExpanded && (myJobs != null && myJobs!.isNotEmpty))
                      ...myJobs!.map((job) => ListTile(
                        title: Text('${S.of(context).work} ${job['title'] ?? S.of(context).NoTitle}'),
                        subtitle: Text('${S.of(context).companyname} ${job['companyName'] ?? S.of(context).Unknown}'),
                      )),
                    if (_isMyJobsExpanded && (myJobs == null || myJobs!.isEmpty))
                      Text(S.of(context).noad),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isAppliedJobsExpanded = !_isAppliedJobsExpanded;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(S.of(context).MyApplications, style: TextStyle(fontSize: 22)),
                          Icon(_isAppliedJobsExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    if (_isAppliedJobsExpanded && (appliedJobs != null && appliedJobs!.isNotEmpty))
                      ...appliedJobs!.map((job) => ListTile(
                        title: Text('${S.of(context).work} ${job['jobTitle'] ?? S.of(context).NoTitle}'),
                        subtitle: Text('${S.of(context).companyname} ${job['companyName'] ?? S.of(context).Unknown}'),
                      )),
                    if (_isAppliedJobsExpanded && (appliedJobs == null || appliedJobs!.isEmpty))
                      Text(S.of(context).Youhavenotappliedyet),
                  ],
                );
              }

              return  Center(child: Text(S.of(context).userdatasos));
            },
          ),
        ),
      ),
    );
  }
}
