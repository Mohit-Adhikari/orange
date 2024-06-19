import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../user_auth/presentation/pages/login_page.dart';


class  SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen ({super.key,this.child});


  @override
  State<SplashScreen> createState() => _State();
}

class _State extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),(){
         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>widget.child!), (route)=>false);
    }
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to flutter firebase',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold

          ),
        ),
      ),
    );
  }
}
