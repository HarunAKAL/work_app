import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:work_app/providers/locale_providers.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/home_page.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Firebase başlatılırken hata oluştu: $e');
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocaleProvider()),
      ],
      child: const JobFinderApp(),
    ),
  );
}

class JobFinderApp extends StatelessWidget {
  const JobFinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, localeProvider, child) {
        return MaterialApp(
          locale: localeProvider.current,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('tr', 'TR'),
          ],
          debugShowCheckedModeBanner: false,
          title: 'İş Bulma Uygulaması',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LoginPage(),
          routes: {
            '/signup': (context) => const SignupPage(),
            '/home': (context) => const HomePage(),
            '/login': (context) => const LoginPage(),
          },
        );
      },
    );
  }
}
