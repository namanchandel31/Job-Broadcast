// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobbroadcaster/appcolors.dart';
import 'package:jobbroadcaster/controller/search_controller.dart';
import 'package:jobbroadcaster/view/notification_view.dart';
import 'package:jobbroadcaster/view/postDetail_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen extends GetView {
  SearchScreen({Key? key}) : super(key: key);

  List imgs = [
    'assets/img_1.jpg',
    'assets/img_2.jpg',
  ];

  SearchController searchController = Get.put(SearchController());

  // List of items in our dropdown menu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 90,

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
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        hintStyle: TextStyle(color: AppColors.white),
                        alignLabelWithHint: true,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          size: 20,
                          color: AppColors.primary,
                        ),
                        contentPadding: EdgeInsets.only(
                            bottom: 0, top: 0, right: 10, left: 10),
                        hintText: "Search your perfect post"))
                .w(250)
                .h(5.h)
                .pOnly(left: 12, top: 8, right: 12),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.primary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)))),
              child: Text(
                'Search',
              ),
            ).h(5.h).w(100).pOnly(top: 8),
          ]),

          Expanded(
            child: Container(
              // height: 98.h,
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: GridTile(
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
            ),
          ),
          // ListView.builder(
          //   itemBuilder: (context, index) => Column(
          //     children: [
          //       Row(
          //         children: [
          //           Container(
          //             height: 40,
          //             width: 40,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               image: DecorationImage(
          //                   image: AssetImage(
          //                     'assets/profile.jpg',
          //                   ),
          //                   fit: BoxFit.cover),
          //             ),
          //             child: Container(
          //               height: 4,
          //               width: 4,
          //               alignment: Alignment.bottomRight,
          //               decoration: BoxDecoration(
          //                   // shape: BoxShape.circle,
          //                   // color: Colors.greenAccent
          //                   ),
          //               child: Icon(
          //                 Icons.circle,
          //                 color: Colors.greenAccent,
          //                 size: 14,
          //               ),
          //             ),
          //           ),
          //           2.w.widthBox,
          //           Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: const [
          //                 Text(
          //                   'User_Name',
          //                   style: TextStyle(
          //                       fontSize: 18,
          //                       color: AppColors.primary,
          //                       fontWeight: FontWeight.w600),
          //                 ),
          //                 // Text(
          //                 //   '@location',
          //                 //   style: TextStyle(
          //                 //       fontSize: 12,
          //                 //       color: AppColors.greytext,
          //                 //       fontWeight: FontWeight.w400),
          //                 // ),
          //               ]),
          //           Spacer(),
          //           // Icon(Icons.more_vert_rounded),
          //           Icon(
          //             Icons.send_rounded,
          //             color: AppColors.greytext,
          //           ).rotate(-45).pOnly(bottom: 4, right: 2),
          //         ],
          //       ).pOnly(left: 12, top: 6, right: 6),
          //       1.w.heightBox,
          //       PageView.builder(
          //         itemCount: imgs.length,
          //         scrollDirection: Axis.horizontal,
          //         allowImplicitScrolling: false,
          //         pageSnapping: true,
          //         itemBuilder: (context, index) => Container(
          //           width: 100.w,
          //           height: 80.w,
          //           child: Image.asset(imgs[index], fit: BoxFit.cover),
          //         ),
          //       ).h(80.w),
          //       0.w.heightBox,
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           TextButton(
          //             onPressed: () {
          //               Get.to(() => PostDetailScreen());
          //             },
          //             style: ButtonStyle(
          //               // fixedSize: MaterialStateProperty<Size>(),
          //               foregroundColor:
          //                   MaterialStateProperty.all(AppColors.white),
          //               backgroundColor:
          //                   MaterialStateProperty.all(AppColors.primary),
          //             ),
          //             child: Text(
          //               'Read More...',
          //               style: TextStyle(
          //                   fontSize: 12, fontWeight: FontWeight.w500),
          //             ),
          //           ).pOnly(top: 4, bottom: 4),
          //           Text(
          //             '2 Days Ago',
          //             style: TextStyle(
          //                 fontSize: 12,
          //                 color: AppColors.greytext,
          //                 fontWeight: FontWeight.w500),
          //           )
          //         ],
          //       ).pSymmetric(h: 12).h(38),
          //       2.h.heightBox,
          //     ],
          //   ),
          //   itemCount: 8,
          //   scrollDirection: Axis.vertical,

          //   // shrinkWrap: true,
          // ).h(context.height),
        ],
      ),
    );
  }
}
