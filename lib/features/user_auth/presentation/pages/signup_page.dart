import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  TextEditingController emailController=TextEditingController();

  TextEditingController passwordController=TextEditingController();
   SignupPage({super.key});


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
            ElevatedButton(onPressed: (){print('hi');},
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
}
