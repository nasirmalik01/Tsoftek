// import 'dart:async';
//
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:tristate_softek/screens/home_screen.dart';
// import 'package:tristate_softek/screens/splash_screen.dart';
//
// void main() {
//
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.black26, // status bar color
//   ));
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       debugShowCheckedModeBanner: false,
//       title: 'TriState Softek',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AnimatedSplashScreen(
//         duration: 3000,
//         splash: Image.asset('assets/images/splash_icon2.png'),
//         nextScreen: HomeScreen(),
//         splashTransition: SplashTransition.rotationTransition,
//         backgroundColor: Colors.white,
//         splashIconSize: 250,
//     )
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   @override
//   void initState() {
//     Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen())));
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen();
//   }
// }
//
//
