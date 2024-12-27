import 'package:flutter/material.dart';
import 'package:work_app/generated/l10n.dart';
import '../services/auth_service.dart';
import 'package:provider/provider.dart';
import '../providers/locale_providers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final AuthService _authService = AuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? _emailError;
  String? _passwordError;

  
  final List<String> current = ['Türkçe', 'English'];
  String _selectedLanguage = 'Türkçe';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() async {
    setState(() {
      _emailError = null;
      _passwordError = null;
    });

    try {
      await _authService.signIn(emailController.text, passwordController.text);
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    } catch (e) {
      print(e);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Giriş başarısız, lütfen bilgilerinizi kontrol edin.')),
        );
      }
    }
  }

  void _loginWithGoogle() async {
    try {
      await _authService.signInWithGoogle();
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    } catch (e) {
      print(e);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Google ile giriş başarısız.')),
        );
      }
    }
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label,
    IconData icon,
    String? errorText, [
    TextInputType? keyboardType,
    bool obscureText = false,
  ]) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: Icon(icon),
        errorText: errorText,
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).login),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      S.of(context).welcome,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                      emailController,
                      S.of(context).email,
                      Icons.email,
                      _emailError,
                      TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    _buildTextField(
                      passwordController,
                      S.of(context).password,
                      Icons.lock,
                      _passwordError,
                      null,
                      true,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        textStyle: const TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(S.of(context).login),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      onPressed: _loginWithGoogle,
                      icon: const Icon(Icons.login),
                      label: Text(S.of(context).logingoogle),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        textStyle: const TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(S.of(context).signup),
                    ),
                    const SizedBox(height: 20),
                    Consumer<LocaleProvider>(
                      builder: (context, localeProvider, child) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.read<LocaleProvider>().setTurkish();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: localeProvider.current.languageCode == 'tr'
                                    ? Colors.blueAccent
                                    : Colors.grey,
                              ),
                              child: const Text('Türkçe'),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                context.read<LocaleProvider>().setEnglish();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: localeProvider.current.languageCode == 'en'
                                    ? Colors.blueAccent
                                    : Colors.grey,
                              ),
                              child: const Text('English'),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
