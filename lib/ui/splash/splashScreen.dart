import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../resources/constants/constants.dart';
import '../../widgets/component/text_widget.dart';
import '../home_screen/home_page.dart';
import '../login_intro/login_intro.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    checkUser();
    super.initState();
  }



  Future checkUser() async {
    try {
      User? user =  FirebaseAuth.instance.currentUser;
      if (!mounted) {
        return;
      }
      if (user != null) {
        await Future.delayed(const Duration(seconds: 0));
        Navigator.of(context).pushNamed(HomePage.routeName);
      }
      else{
        await Future.delayed(const Duration(seconds: 0));
        Navigator.of(context).pushNamed(LoginIntro.routeName);
      }
    } catch (e) {
      print('Error during userCheck(): $e');
    }
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextWidget(
            title: Constants.appName,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
