import 'package:flutter/material.dart';
import 'package:work_app/generated/l10n.dart';
import 'package:work_app/pages/profile_page.dart';
import 'job_list_page.dart';
import 'job_post_page.dart';
import '../services/auth_service.dart';
import 'login_page.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final AuthService _authService = AuthService();
  int _currentIndex = 0;

  
  final List<Widget> _pages =  [
    JobListPage(),
    JobPostPage(),
    ProfilePage(),
  ];

  
  void _logout() async {
    await _authService.signOut();
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const LoginPage()), 
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: S.of(context).ads,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: S.of(context).jobad,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: S.of(context).profile,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _logout,
        child: const Icon(Icons.logout),
        tooltip: S.of(context).logout,
      ),
    );
  }
}
