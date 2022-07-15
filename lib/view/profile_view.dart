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
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.primary,
          size: 18,
        ).onTap(() {
          Get.back();
        }),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Edit Profile',
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
          ).centered(),
          4.h.heightBox,
          Container(
              height: 40,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Full Name',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          2.h.heightBox,
          Container(
              height: 40,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Mobile',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          2.h.heightBox,
          Container(
              height: 40,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Gender',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          2.h.heightBox,
          Container(
              height: 40,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          2.h.heightBox,
          Container(
              height: 40,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'User Name',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          2.h.heightBox,
          Container(
              height: 40,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: '5 Intrested Locations',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          2.h.heightBox,
          Container(
              height: 40,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'State',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          2.h.heightBox,
          Container(
              height: 40,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'City',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          2.h.heightBox,
          Container(
              height: 20.h,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'About Yourself',
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 10)),
              )).centered(),
          4.h.heightBox,
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.primary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
            child: Text(
              'Update',
            ),
          ).w(90.w).centered()
        ],
      )),
    );
  }
}
