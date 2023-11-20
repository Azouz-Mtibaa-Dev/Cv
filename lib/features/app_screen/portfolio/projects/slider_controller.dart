import 'package:get/get.dart';

class ProjectController extends GetxController {
  static ProjectController get instance => Get.find();
  final carousalCurrentIndex = 0.obs;
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}
