import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
class AuthService{
  ///FOR SINGIN
  Future<String?> registration(
  {
    required String email,
    required String password,

})async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: password
      );
      return 'Success';
    }
    on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        return 'Password is too weak';
      }
      else if(e.code == 'email-already-in-use'){
        return 'The account already exists for this email';
      }
      else{
        return e.message;
      }
    }
    catch(e){
      return e.toString();
    }
  }

  ///FOR LOGIN
Future<String?> login(
  {
    required String email,
    required String password
}
) async{
    try{
       await FirebaseAuth.instance.signInWithEmailAndPassword(
           email: email, password: password);
    }
    on FirebaseAuthException catch(e){
      if(e.code =='user-not-found'){
        return 'NO user found for that email';
      }
      else if(e.code == 'wrong-password'){
        return 'Wrong password';
      }
      else{
        return e.toString();
      }

    }

}


}