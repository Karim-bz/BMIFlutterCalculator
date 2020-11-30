import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SommeController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  @override
  void onInit() {
    GetStorage box = GetStorage();
    if (box.read("count1") != null) {
      count1.value = box.read("count1");
      count2.value = box.read("count2");
    }
  }

  increment() => count1.value++;
  desincrement() => count1.value--;
  increment2() => count2.value++;
  desincrement2() => count2.value--;
}
