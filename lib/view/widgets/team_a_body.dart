import 'package:counter_app/controller/counter_controller.dart';
import 'package:counter_app/utils/size_config.dart';
import 'package:counter_app/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TeamABody extends StatelessWidget {
  TeamABody({
    super.key,
  });
  CounterController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Team A",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        GetBuilder<CounterController>(
          builder: (controller) {
            return Text(
              "${controller.pointsGroupA}",
              style: const TextStyle(
                fontSize: 140,
              ),
            );
          },
        ),
        CustomButton(
          text: "Add 1 Points",
          onpressed: () {
            controller.incrementGroupA(point: 1);
          },
        ),
        SizedBox(
          height: SizeConfig.height! * 0.01,
        ),
        CustomButton(
          text: "Add 2 Points",
          onpressed: () {
            controller.incrementGroupA(point: 2);
          },
        ),
        SizedBox(
          height: SizeConfig.height! * 0.01,
        ),
        CustomButton(
          text: "Add 3 Points",
          onpressed: () {
            controller.incrementGroupA(point: 3);
          },
        ),
      ],
    );
  }
}
