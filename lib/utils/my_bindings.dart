import 'package:counter_app/controller/counter_controller.dart';
import 'package:get/get.dart';

class MyBinidings implements Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }
}
