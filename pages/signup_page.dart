import 'package:flutter/material.dart';
import 'package:work_app/generated/l10n.dart';
import '../services/auth_service.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  final AuthService _authService = AuthService();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  String? gender;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  
  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      prefixIcon: Icon(icon),
    );
  }

  void _signup() async {
    if (_formKey.currentState!.validate()) {
      try {
        await _authService.signUp(
          emailController.text,
          passwordController.text,
          ageController.text,
          gender ?? 'Belirtilmemiş',
          nameController.text,
        );
        Navigator.pushReplacementNamed(context, '/login');
      } catch (e) {
        print(e);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(S.of(context).savesos)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).signup),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      S.of(context).welcome,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: nameController,
                      decoration: _inputDecoration( S.of(context).username, Icons.person),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).usernameSos;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: emailController,
                      decoration: _inputDecoration(S.of(context).email, Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).emailsos;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      decoration: _inputDecoration(S.of(context).password, Icons.lock),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).passwordsos;
                        }
                        if (value.length < 6) {
                          return S.of(context).passwordsos1;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: ageController,
                      decoration: _inputDecoration(S.of(context).age, Icons.cake),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).agesos1;
                        }
                        if (int.tryParse(value) == null) {
                          return S.of(context).agesos;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      decoration: _inputDecoration(S.of(context).gender, Icons.person),
                      value: gender,
                      items: [S.of(context).man, S.of(context).woman, S.of(context).other]
                          .map((label) => DropdownMenuItem(
                                value: label,
                                child: Text(label),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return S.of(context).genderselect;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _signup,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        textStyle: const TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(S.of(context).signup),
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
