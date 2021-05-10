import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_firebase/app/data/model/user_model.dart';


//
//9 - FLUTTER + GETX - A CLASSE PROVEDORA DE DADOS (PROVIDER)
//PARE NA AULA 09 POIS AS COISAS DO VIDEO ESTAO OBSOLETAS, TENTO CONTINUAR MAS NAO DEU CERTO

class LoginApiClient {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<UserModel> get onAuthStateChanged => _firebaseAuth.authStateChanges().
}