import 'package:flutter/material.dart';
import 'package:jobbroadcaster/view/landing_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'appcolors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Job Broadcast',
        color: AppColors.primary,
        theme: ThemeData(
          fontFamily: 'Lato',          
           
          primarySwatch: Colors.grey,
        ),
        
        
        home: LandingScreen(),
      ),
    );
  }
}
