import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../appcolors.dart';
import 'otp_view.dart';

class LoginScreen extends GetView {
  @override
  final TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            20.h.heightBox,
            Container(
                height: 250,
                width: 250,
                child: (Lottie.asset(
                  'assets/signin.json',
                  // repeat: false,
                  animate: true,
                ))).centered(),
            6.h.heightBox,
            Text(
              'Enter Your Phone Number',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            4.h.heightBox,
            Container(
              // height: 100,
              width: 80.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.greylight),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: InternationalPhoneNumberInput(
                hintText: 'Phone Number',

                textStyle: TextStyle(
                  debugLabel: 'Phone',
                  color: AppColors.black,
                ),
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.DROPDOWN,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(color: Colors.black),
                searchBoxDecoration: InputDecoration(),
                initialValue: number,
                textFieldController: controller,
                formatInput: false,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                // inputBorder: InputBorder.,
                inputDecoration: InputDecoration(
                  fillColor: AppColors.primary,
                  // filled: true,
                  hintText: 'Phone Number',
                  contentPadding: EdgeInsets.only(bottom: 16),
                  border: InputBorder.none,
                  // enabledBorder:

                  //fillColor: Colors.blue,
                ),
                onSaved: (PhoneNumber number) {
                  print('On Saved: ');
                },
              ),
            ),
            4.h.heightBox,
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
              onPressed: () => Get.to(() => OtpScreen()),
              child: const Text(
                'Get OTP',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ).w(80.w),
          ],
        ),
      ),
    );
  }
}
