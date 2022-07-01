// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobbroadcaster/appcolors.dart';
import 'package:jobbroadcaster/view/notification_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageScreen extends GetView {
  HomePageScreen({Key? key}) : super(key: key);

  List imgs = [
    'assets/img_1.jpg',
    'assets/img_2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            color: AppColors.primary,
          ).paddingOnly(right: 6).onTap(() {
            Get.to(() => NotificationScreen());
          })
        ],
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Job Broadcaster',
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
                Spacer(),
                // Icon(Icons.more_vert_rounded),
                Icon(
                  Icons.send_rounded,
                  color: AppColors.greytext,
                ).rotate(-45).pOnly(bottom: 4, right: 2),
              ],
            ).pOnly(left: 12, top: 6, right: 6),
            1.w.heightBox,
            PageView.builder(
              itemCount: imgs.length,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: false,
              pageSnapping: true,
              itemBuilder: (context, index) => Container(
                width: 100.w,
                height: 80.w,
                child: Image.asset(imgs[index], fit: BoxFit.cover),
              ),
            ).h(80.w),
            0.w.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    // fixedSize: MaterialStateProperty<Size>(),
                    foregroundColor: MaterialStateProperty.all(AppColors.white),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary),
                  ),
                  child: Text(
                    'Read More...',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ).pOnly(top: 4, bottom: 4),
                Text(
                  '2 Days Ago',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.greytext,
                      fontWeight: FontWeight.w500),
                )
              ],
            ).pSymmetric(h: 12).h(38),
            2.h.heightBox,
          ],
        ),
        itemCount: 8,
        scrollDirection: Axis.vertical,

        // shrinkWrap: true,
      ).h(context.height),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.black,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: 0,
          iconSize: 22,
          unselectedItemColor: AppColors.greylight,
          selectedItemColor: AppColors.primary,
          selectedLabelStyle: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
              fontSize: 12,
              letterSpacing: 1.2),
          unselectedLabelStyle: TextStyle(
              color: AppColors.white,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: AppColors.greylight,
              ),
              activeIcon: Icon(
                Icons.home_filled,
                color: AppColors.primary,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                  color: AppColors.greylight,
                ),
                activeIcon: Icon(
                  Icons.search_rounded,
                  color: AppColors.primary,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: AppColors.greylight,
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: AppColors.primary,
                ),
                label: 'Profile')
          ]),
      // BottomAppBar(
      //     color: AppColors.black,
      //     elevation: 10,
      //     // notchMargin: 10,
      //     // shape: NotchedShape(),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text(
      //           'Home',
      //           style: TextStyle(
      // color: AppColors.primary,
      // fontWeight: FontWeight.w700,
      // letterSpacing: 1),
      //         ),
      //         Text(
      //           'Search',
      //           style: TextStyle(
      //               color: AppColors.primary,
      //               fontWeight: FontWeight.w700,
      //               letterSpacing: 1),
      //         ),
      //         Text(
      //           'Profile',
      //           style: TextStyle(
      //               color: AppColors.primary,
      //               fontWeight: FontWeight.w700,
      //               letterSpacing: 1),
      //         ),
      //       ],
      //     )).h(8.h),
      // .h(84.h),

      //  Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 94.w,
      //       height: 84.h,
      //       child: ListView.builder(
      //         itemBuilder: (context, index) => Container(
      //           height: 165,
      //           decoration: BoxDecoration(
      //             border: Border.all(color: AppColors.greylight),
      //             borderRadius: BorderRadius.all(
      //               Radius.circular(20),
      //             ),
      //             // ignore: prefer_const_literals_to_create_immutables
      //             boxShadow: [
      //               BoxShadow(
      //                   color: AppColors.greytext,
      //                   offset: Offset(0, 0),
      //                   blurStyle: BlurStyle.outer,
      //                   blurRadius: 1,
      //                   spreadRadius: 0)
      //             ],
      //           ),
      //           clipBehavior: Clip.hardEdge,
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 // ignore: prefer_const_literals_to_create_immutables
      //                 children: [
      //                   Text('Company Name', style: TextStyle()),
      //                   Text('Status',
      //                       style: TextStyle(
      //                         fontWeight: FontWeight.bold,
      //                       )),
      //                 ],
      //               )
      //                   .paddingSymmetric(horizontal: 16)
      //                   .backgroundColor(AppColors.primary)
      //                   .h(30),
      //               1.h.heightBox,
      //               Row(crossAxisAlignment: CrossAxisAlignment.center,
      //                   // mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     Image.asset(
      //                       'assets/icons/coupon.png',
      //                       scale: 10,
      //                     ),
      //                     // Spacer(),
      //                     4.w.widthBox,
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       // mainAxisAlignment: MainAxisAlignment.end,
      //                       children: [
      //                         Text(
      //                           'Profile',
      //                           style: TextStyle(
      //                               fontWeight: FontWeight.bold, fontSize: 20),
      //                         ),
      //                         Text(
      //                           'Key requirements',
      //                           style: TextStyle(fontSize: 12),
      //                         )
      //                       ],
      //                     ),
      //                   ]).paddingSymmetric(horizontal: 12, vertical: 8),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text('1 Day Ago..'),
      //                   Spacer(),
      //                   OutlinedButton(
      //                     style: ButtonStyle(
      //                         // textStyle: TextStyle(s),
      //                         fixedSize: MaterialStateProperty.all<Size>(
      //                             Size(150, 30)),
      //                         minimumSize: MaterialStateProperty.all<Size>(
      //                             Size(150, 30)),
      //                         foregroundColor:
      //                             MaterialStateProperty.all(AppColors.primary),
      //                         shape: MaterialStateProperty.all<
      //                                 RoundedRectangleBorder>(
      //                             RoundedRectangleBorder(
      //                                 borderRadius: BorderRadius.all(
      //                                     Radius.circular(25))))),
      //                     onPressed: () {},
      //                     child: Text(
      //                       'Click to know more',
      //                       style: TextStyle(
      //                         fontSize: 12,
      //                       ),
      //                     ),
      //                   ),
      //                   2.w.widthBox,
      //                   Icon(
      //                     Icons.share,
      //                     color: AppColors.primary,
      //                     size: 20,
      //                   ),
      //                 ],
      //               ).paddingOnly(right: 16, bottom: 8, left: 16),
      //             ],
      //             // mainAxisAlignment: MainAxisAlignment.center,
      //           ),
      //         ).paddingSymmetric(vertical: 8),
      //         itemCount: 10,
      //         scrollDirection: Axis.vertical,
      //       ),
      //     ).centered(),
      //   ],
      // ),
    );
  }
}
