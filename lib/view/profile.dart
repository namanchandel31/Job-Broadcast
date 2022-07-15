import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:jobbroadcaster/controller/profile_controller.dart';
import 'package:jobbroadcaster/view/profile_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../appcolors.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: AppColors.primary),
          ),
          backgroundColor: AppColors.black,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
                ),
                Column(
                  children: [
                    Text(
                      'User_Name',
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600),
                    ),
                    Text('About Yourself of the user'),
                  ],
                )
              ],
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
                Get.to(() => ProfileScreen());
              },
              child: const Text(
                'Edit Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ).w(80.w),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.greylight),
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
              onPressed: () {},
              child: const Text(
                'Become a Moderator',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ).w(80.w),
            2.h.heightBox,
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: AppColors.primary,
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: 'Timeline',
                      // icon: Icon(Icons.directions_bike),
                    ),
                    Tab(
                      text: 'Activity',
                      // icon: Icon(
                      //   Icons.directions_car,
                      // ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return new Card(
                        child: new GridTile(
                            footer: Container(
                              height: 4.h,
                              color: Colors.white,
                              child: Text('Details about the post').centered(),
                            ),
                            child: Image.asset(
                              'assets/img_1.jpg',
                              fit: BoxFit.cover,
                            )
                            // Text(
                            //     'image'), //just for testing, will fill with image later
                            ),
                      );
                    },
                  ),
                  // Container(
                  //   color: Colors.red,
                  //   child: Center(
                  //     child: Text(
                  //       'Bike',
                  //     ),
                  //   ),
                  // ),

                  // second tab bar viiew widget
                  Container(
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        'Activity',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
