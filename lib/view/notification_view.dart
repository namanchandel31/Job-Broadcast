import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:jobbroadcaster/appcolors.dart';
import 'package:jobbroadcaster/view/postDetail_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends GetView {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(color: AppColors.primary),
        ),
        backgroundColor: AppColors.black,

        // leading: InkWell(
        //   onTap: () {
        //     Get.back();
        //   },
        //   child: Icon(
        //     Icons.arrow_back_ios_new_rounded,
        //     color: AppColors.primary,
        //   ),
        // ),
        centerTitle: true,
        // backgroundColor: AppColors.black,
      ),
      body: Container(
        // width: 94.w,
        // height: 80.h,
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            dense: true,
            leading: Image.asset(
              'assets/icons/bell.png',
              color: AppColors.primary,
              scale: 18,
            ),
            title: Text(
              'Designation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Key Requirements'),
            contentPadding: EdgeInsets.symmetric(vertical: 2),
            trailing: Container(
              height: 10.h,
              width: 10.w,
              child: Image.asset('assets/img_1.jpg'),
            ).onTap(() => Get.to(() => PostDetailScreen())),
          ).paddingSymmetric(horizontal: 16),
          itemCount: 20,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
