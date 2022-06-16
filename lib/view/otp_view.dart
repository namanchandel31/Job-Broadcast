import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../appcolors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        20.h.heightBox,
        Container(
                height: 150,
                width: 150,
                child: (Lottie.asset('assets/landing.json')))
            .centered(),
        2.h.heightBox,
        Text(
          'Let\'s get started',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        Text(
          'Hundreds of qualified applicants are looking for your post',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        2.h.heightBox,
         ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.primary),
              foregroundColor: MaterialStateProperty.all(AppColors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all(
                const Size(200, 40),
              ),
            ),
            onPressed: () {
              // Get.to(() => LoginScreen());
            },
            child: const Text(
              'SIGN IN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ).w(90.w),
      ],
    ),
    );
    
  }
}