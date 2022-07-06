import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../appcolors.dart';
import 'notification_view.dart';

class ProfileScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            size: 18,
            color: AppColors.primary,
          ).paddingOnly(right: 12).onTap(() {
            Get.to(() => NotificationScreen());
          })
        ],
        automaticallyImplyLeading: false,
        // leading: Icon(
        //   Icons.arrow_back_ios_new_rounded,
        //   color: AppColors.primary,
        //   size: 18,
        // ).onTap(() {
        //   Get.back();
        // }),

        // toolbarHeight: 0,
        centerTitle: true,
        title: Text('Profile',
            style: TextStyle(
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            )),
        backgroundColor: AppColors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          4.h.heightBox,
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(
                //   Radius.circular(50),
                // ),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/profile.jpg',
                    ),
                    fit: BoxFit.cover)),
          ).centered()
        ],
      )),
    );
  }
}
