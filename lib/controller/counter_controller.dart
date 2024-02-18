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

  void reset() {
    pointsGroupA = 0;
    pointsGroupB = 0;
    update();
  }
}
