
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
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
            Text('Login',style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
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
            Text('Dont have Account? Sign up!',style: TextStyle(fontSize: 11,color: Colors.blue),)
            
          ],
        ),
      ),
    );
  }
}
