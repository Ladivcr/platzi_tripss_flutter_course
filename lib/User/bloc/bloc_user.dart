import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();
  //Flujo de datos - Streams
  //Stream - Firebase
  //ScreamController
  Stream<User?> Function() streamFirebase = FirebaseAuth.instance.authStateChanges;
  Stream<User?> Function() get authStatus => streamFirebase;

  //Casos de uso
  //1. SignIn a la aplicación con Google
  Future<UserCredential> signIn(){
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}