import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mohan/features/user_auth/firebase_user_auth/firebase_auth_services.dart';

class SignupPage extends StatefulWidget {

   SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FirebaseAuthServices _auth=FirebaseAuthServices();
  TextEditingController emailController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign up',style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
            SizedBox(height:20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Enter email',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:_signup,
              child:Text('Submit'),

            ),
            SizedBox(height: 20),
            GestureDetector(
                onTap: (){

                },
                child:
                Text('Already have account?',style: TextStyle(fontSize: 11,color: Colors.blue),)),

          ],
        ),
      ),
    );
  }
  void _signup() async
  {
    String email=emailController.text;
    String password=passwordController.text;
    User? user=await _auth.signupWithEmailAndPAssword(email, password);
    if (user!= null)
      {
        print('sign in sucessfull');
      }
    else{
      print('sign in unsucessfull');
    }
  }
}
