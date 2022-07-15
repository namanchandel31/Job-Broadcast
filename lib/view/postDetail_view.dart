import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:jobbroadcaster/view/notification_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../appcolors.dart';

List imgs = [
  'assets/img_1.jpg',
  'assets/img_2.jpg',
];

class PostDetailScreen extends GetView {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.primary,
            size: 18,
          ).onTap(() {
            Get.back();
          }),

          // toolbarHeight: 0,
          centerTitle: true,
          title: Text('Post Detail',
              style: TextStyle(
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              )),
          backgroundColor: AppColors.black,
        ),
        body: Column(
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
                      Text(
                        '@Assignee',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.greytext,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
                Spacer(),
                Text(
                  '~ 3 KM Away',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.black,
                      fontWeight: FontWeight.w500),
                ).pOnly(top: 6),
                // Icon(Icons.more_vert_rounded),
                // Icon(
                //   Icons.send_rounded,
                //   color: AppColors.greytext,
                // ).rotate(-45).pOnly(bottom: 4, right: 2),
              ],
            ).pOnly(left: 12, top: 6, right: 12),
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
            DotsIndicator(
              dotsCount: imgs.length,
              // position: 2,
              decorator: DotsDecorator(
                color: Colors.black87, // Inactive color
                activeColor: AppColors.primary,
              ),
            ),
            2.h.heightBox,
            Text(
              'Experince :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ).objectCenterLeft().pOnly(left: 14),
            Text('1-3 Year ').pOnly(left: 14, top: 4).objectCenterLeft(),
            2.h.heightBox,
            Text(
              'Job Description :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ).objectCenterLeft().pOnly(left: 14),
            Flexible(
              child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ')
                  .pSymmetric(h: 14, v: 4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '2 Days Ago',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.greytext,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    // fixedSize: MaterialStateProperty<Size>(),
                    foregroundColor: MaterialStateProperty.all(AppColors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Icon(
                    Icons.delete_rounded,
                    size: 16,
                  ).centered(),
                ).pOnly(top: 4, bottom: 4).w(50),
                4.w.widthBox,
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    // fixedSize: MaterialStateProperty<Size>(),
                    foregroundColor: MaterialStateProperty.all(AppColors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Icon(
                    Icons.switch_account,
                    size: 16,
                  ).centered(),
                ).pOnly(top: 4, bottom: 4).w(50),
                4.w.widthBox,
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    // fixedSize: MaterialStateProperty<Size>(),
                    foregroundColor: MaterialStateProperty.all(AppColors.white),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary),
                  ),
                  child: Icon(
                    Icons.share,
                    size: 16,
                  ).centered(),
                ).pOnly(top: 4, bottom: 4).w(50),
              ],
            ).pSymmetric(h: 14).h(38),
            2.h.heightBox,
          ],
        ),
      ),
    );
  }
}
