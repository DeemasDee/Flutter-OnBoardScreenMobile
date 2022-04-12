import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/sk_onboarding_model.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';
//mengimport beberapa package dari sk_onboarding pub.dev

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: Colors.redAccent,
        pages: pages,
        getStartedClicked: (String value) {},
        skipClicked: (String value) {},
        //skipClicked: (value) {
        //  _globalKey.currentState
        //      .showSnackBar(Snackbar(content: Text('skip clicked')));
        //},
        //getStartedClicked: (value) {
        //  _globalKey.currentState
        //      .showSnackBar(Snackbar(content: Text('Get Started Clicked')));
        //},
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Daftar Cepat dengan Online',
        description: 'Ayo Daftarkan diri Anda',
        titleColor: Colors.black,
        descripColor: Colors.blueGrey,
        imagePath: 'assets/img/1.jpg'),
    SkOnboardingModel(
        title: 'Daftar Cukup Dari tempatmu sekarang',
        description: 'Tidak ribet',
        titleColor: Colors.black,
        descripColor: Colors.blueGrey,
        imagePath: 'assets/img/2.jpg'),
    SkOnboardingModel(
        title: 'Mudah dan cepat',
        description: 'Ingin masakan rumah tidak perlu capek masak',
        titleColor: Colors.black,
        descripColor: Colors.blueGrey,
        imagePath: 'assets/img/3.jpg')
  ];
}
