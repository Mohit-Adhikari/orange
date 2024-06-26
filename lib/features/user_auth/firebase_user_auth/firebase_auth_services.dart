 import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices{
  FirebaseAuth _auth=FirebaseAuth.instance;
  Future<User?> signupWithEmailAndPAssword(String email,String password) async{
     try{
       UserCredential credential= await _auth.createUserWithEmailAndPassword(email: email, password: password);
       return credential.user;
     }catch(e)
    {
      print('Some Error occured');
    }
    return null;
  }
  Future<User?> signInWithEmailAndPAssword(String email,String password) async{
    try{
      UserCredential credential= await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }catch(e)
    {
      print('Some Error occured');
    }
    return null;
  }
 }