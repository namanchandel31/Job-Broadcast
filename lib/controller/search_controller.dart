import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final selected = "".obs;

  void setSelected(String value) {
    selected.value = value;
  }

  List listType = ['1', '2', '3'];
}
