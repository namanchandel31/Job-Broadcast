import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobbroadcaster/view/homepage_view.dart';
import 'package:jobbroadcaster/view/profile_view.dart';
import 'package:jobbroadcaster/view/search_view.dart';

import '../appcolors.dart';
import '../controller/dashboard_controller.dart';

class Dashboard extends GetView {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, dashboardController) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: Obx(() => BottomNavigationBar(
                  backgroundColor: AppColors.black,
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  onTap: dashboardController.changeTabIndex,
                  currentIndex: dashboardController.tabIndex.value,
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
                  ])),

          //   showUnselectedLabels: true,
          //   showSelectedLabels: true,
          //   onTap: landingPageController.changeTabIndex,
          //   currentIndex: landingPageController.tabIndex.value,
          //   backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
          //   unselectedItemColor: Colors.white.withOpacity(0.5),
          //   selectedItemColor: Colors.white,
          //   unselectedLabelStyle: unselectedLabelStyle,
          //   selectedLabelStyle: selectedLabelStyle,
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: Container(
          //         margin: EdgeInsets.only(bottom: 7),
          //         child: Icon(
          //           Icons.home,
          //           size: 20.0,
          //         ),
          //       ),
          //       label: 'Home',
          //       backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Container(
          //         margin: EdgeInsets.only(bottom: 7),
          //         child: Icon(
          //           Icons.search,
          //           size: 20.0,
          //         ),
          //       ),
          //       label: 'Explore',
          //       backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Container(
          //         margin: EdgeInsets.only(bottom: 7),
          //         child: Icon(
          //           Icons.location_history,
          //           size: 20.0,
          //         ),
          //       ),
          //       label: 'Places',
          //       backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Container(
          //         margin: EdgeInsets.only(bottom: 7),
          //         child: Icon(
          //           Icons.settings,
          //           size: 20.0,
          //         ),
          //       ),
          //       label: 'Settings',
          //       backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
          //     ),
          //   ],
          // ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
        Get.put(DashboardController(), permanent: false);
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar:
              buildBottomNavigationMenu(context, dashboardController),
          body: Obx(() => IndexedStack(
                index: dashboardController.tabIndex.value,
                children: [
                  HomePageScreen(),
                  SearchScreen(),
                  ProfileScreen(),
                ],
              ))),
    );
  }
}
