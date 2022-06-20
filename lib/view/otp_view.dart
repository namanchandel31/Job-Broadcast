import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:otp_text_field/otp_field.dart';

import '../appcolors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.h.heightBox,
            Container(
                    height: 250,
                    width: 250,
                    child: (Lottie.asset('assets/otp.json')))
                .centered(),
            7.h.heightBox,
            Flex(
              direction: Axis.vertical,
              children: [
                const Text(
                  'A 5-Digit PIN has been sent to your phone number, Enter it below to continue',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.greytext,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ).marginSymmetric(horizontal: 4.w),
              ],
            ).pSymmetric(h: 40),
            5.h.heightBox,
            // Row(
            //   children: const [
            //     Text('Hello'),
            //     Text('Hello'),
            //     Text('Hello'),
            //     Text('Hello'),
            //     Text('Hello'),
            //   ],
            // ),
            OTPTextField(
                // controller: otpController,
                length: 5,
                width: 90.w,
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldWidth: 50,
                keyboardType: TextInputType.number,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(
                    enabledBorderColor: AppColors.greytext,
                    // borderColor: AppColors.red,
                    focusBorderColor: AppColors.primary),
                outlineBorderRadius: 100,
                contentPadding: const EdgeInsets.only(top: 4.6, left: 4.2),
                style: const TextStyle(fontSize: 17),
                onChanged: (pin) {
                  code = pin;
                  // print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  code = pin;
                  // print("Completed: " + code);
                }),
            30.h.heightBox,
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
                // Get.to(() => const NewPasswordScreen());
              },
              child: const Text(
                'VERIFY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ).w(90.w).centered(),
            // ElevatedButton(
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(AppColors.primary),
            //     foregroundColor: MaterialStateProperty.all(AppColors.white),
            //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //       RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20.0),
            //       ),
            //     ),
            //     minimumSize: MaterialStateProperty.all(
            //       const Size(200, 40),
            //     ),
            //   ),
            //   onPressed: () {
            //     // Get.to(() => LoginScreen());
            //   },
            //   child: const Text(
            //     'SIGN IN',
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            // ).w(90.w),
          ],
        ),
      ),
    );
  }
}
