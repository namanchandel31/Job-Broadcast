import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:jobbroadcaster/appcolors.dart';
import 'package:jobbroadcaster/controller/add_post_controller.dart';

class AddPostView extends GetView<AddPostController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text('Add Post Coming Soon'),
      ),
    ));
  }
}
