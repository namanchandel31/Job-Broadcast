// ignore_for_file: prefer_const_constructors

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobbroadcaster/appcolors.dart';
import 'package:jobbroadcaster/view/notification_view.dart';
import 'package:jobbroadcaster/view/postDetail_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageScreen extends GetView {
  HomePageScreen({Key? key}) : super(key: key);

  List imgs = [
    'assets/img_1.jpg',
    'assets/img_2.jpg',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   Icon(
        //     Icons.notifications,
        //     color: AppColors.primary,
        //   ).paddingOnly(right: 6).onTap(() {
        //     Get.to(() => NotificationScreen());
        //   })
        // ],
        automaticallyImplyLeading: false,
        // toolbarHeight: 0,
        centerTitle: true,
        title: Text('LOGO',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            )),
        backgroundColor: AppColors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/profile.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    height: 4,
                    width: 4,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        // color: Colors.greenAccent
                        ),
                    child: Icon(
                      Icons.circle,
                      color: Colors.greenAccent,
                      size: 14,
                    ),
                  ),
                ),
                2.w.widthBox,
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'User_Name',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600),
                      ),
                      // Text(
                      //   '@location',
                      //   style: TextStyle(
                      //       fontSize: 12,
                      //       color: AppColors.greytext,
                      //       fontWeight: FontWeight.w400),
                      // ),
                    ]),
                // Spacer(),
                // Icon(Icons.more_vert_rounded),
                // Icon(
                //   Icons.send_rounded,
                //   color: AppColors.greytext,
                // ).rotate(-45).pOnly(bottom: 4, right: 2),
              ],
            ).pOnly(left: 12, top: 6, right: 6),
            1.w.heightBox,
            PageView.builder(
              itemCount: imgs.length,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: false,
              onPageChanged: (value) {
                index = value;
              },
              pageSnapping: true,
              itemBuilder: (context, index) => Container(
                width: 100.w,
                height: 80.w,
                child: Image.asset(imgs[index], fit: BoxFit.cover),
              ),
            ).h(80.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.send_rounded,
                  color: AppColors.greytext,
                ).rotate(-45).pOnly(bottom: 4, right: 2),
                DotsIndicator(
                  dotsCount: imgs.length,
                  // position: 2,
                  decorator: DotsDecorator(
                    color: Colors.black87, // Inactive color
                    activeColor: AppColors.primary,
                  ),
                ),
                Text(
                  '2 Days Ago',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.greytext,
                      fontWeight: FontWeight.w500),
                )
              ],
            ).paddingOnly(left: 15, right: 15),
            0.w.heightBox,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Lorem ipsum dolor sit amet...'),
                TextButton(
                  onPressed: () {
                    Get.to(() => PostDetailScreen());
                  },
                  style: ButtonStyle(
                    // fixedSize: MaterialStateProperty<Size>(),
                    foregroundColor: MaterialStateProperty.all(AppColors.white),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary),
                  ),
                  child: Text(
                    'Read More',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ).pOnly(top: 4, bottom: 4),
              ],
            ).pSymmetric(h: 12).h(38),
            2.h.heightBox,
          ],
        ),
        itemCount: 8,
        scrollDirection: Axis.vertical,

        // shrinkWrap: true,
      ).h(context.height),
    );
  }
}
