import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  
  User? get currentUser => _auth.currentUser;

  
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email, 
        password: password,
      );
      return result.user;
    } catch (e) {
      print('Giriş sırasında hata oluştu: $e');
      throw Exception('Giriş sırasında hata oluştu.'); 
    }
  }

  // E-posta ve şifre ile kayıt olma
  Future<User?> signUp(String email, String password, String age, String gender, String name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email, 
        password: password,
      );
      User? user = result.user;

      // Firestore'a kullanıcı bilgilerini kaydetme
      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'email': email,
          'age': age,
          'gender': gender,
          'name': name, 
          'createdAt': Timestamp.now(), 
        });
      }

      return user;
    } catch (e) {
      print('Kayıt işlemi sırasında hata oluştu: $e');
      throw Exception('Kayıt işlemi sırasında hata oluştu.'); 
    }
  }

  Future<User?> signInWithGoogle() async {
  try {
    // Google ile oturum açma işlemi başlatılıyor.
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return null; // Kullanıcı hesabı seçmezse veya iptal ederse null döner.

    // Google hesabının doğrulama bilgileri alınır.
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Firebase için gerekli kimlik bilgileri oluşturuluyor.
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Firebase ile kullanıcıyı oturum açtırma işlemi yapılır.
    UserCredential result = await _auth.signInWithCredential(credential);
    User? user = result.user;

    // Eğer kullanıcı başarıyla giriş yaptıysa Firestore'a kaydedilir.
    if (user != null) {
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      if (!userDoc.exists) {
        await _firestore.collection('users').doc(user.uid).set({
          'email': user.email,
          'createdAt': Timestamp.now(),
        });
      }
    }

    return user; // Başarılı giriş sonrası kullanıcıyı döndür.
  } catch (e) {
    // Hata mesajları burada loglanır ve kullanıcıya gösterilir.
    print('Google ile giriş sırasında hata oluştu: $e');
    throw Exception('Google ile giriş sırasında hata oluştu.'); // Kullanıcı dostu hata mesajı
  }
}


  // Çıkış yapma (Google ve Firebase)
  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut(); // Google çıkışını da yap
    } catch (e) {
      print('Google çıkışı sırasında hata oluştu: $e');
    }
    await _auth.signOut(); // Firebase çıkışı
  }
}
