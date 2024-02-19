import 'package:get/get.dart';

class CounterController extends GetxController {
  int pointsGroupA = 0, pointsGroupB = 0;
  void incrementGroupA({required int point}) {
    pointsGroupA += point;
    update();
  }

  void incrementGroupB({required int point}) {
    pointsGroupB += point;
    update();
  }

  //Another way to increment function
  void increment({required String group, required int point}) {
    if (group == 'A') {
      pointsGroupA += point;
      update();
    } else {
      pointsGroupB += point;
      update();
    }
  }

  void reset() {
    pointsGroupA = 0;
    pointsGroupB = 0;
    update();
  }
}
