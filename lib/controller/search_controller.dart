import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final selected = "some book type".obs;

  List<String> listType = ['1', '2', '3'];

  void setSelected(String value) {
    selected.value = value;
  }
}
