import 'package:counter_app/controller/counter_controller.dart';
import 'package:counter_app/utils/size_config.dart';
import 'package:counter_app/view/widgets/custom_button.dart';
import 'package:counter_app/view/widgets/custom_divider.dart';
import 'package:counter_app/view/widgets/team_a_body.dart';
import 'package:counter_app/view/widgets/team_b_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeViewBody extends StatelessWidget {
  HomeViewBody({
    super.key,
  });
  CounterController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.height! * 0.04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TeamABody(),
            const CustomDivider(),
            TeamBBody(),
          ],
        ),
        SizedBox(
          height: SizeConfig.height! * 0.1,
        ),
        CustomButton(
          text: "Reset",
          onpressed: () {
            controller.reset();
          },
        ),
      ],
    );
  }
}
