import 'package:counter_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.height! * 0.5,
      child: const VerticalDivider(
        thickness: 0.5,
        indent: 50,
        endIndent: 10,
      ),
    );
  }
}
