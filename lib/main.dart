import 'package:counter_app/utils/my_bindings.dart';
import 'package:counter_app/view/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void main() {
  return runApp(
    const CounterApp(),
  );
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBinidings(),
      initialRoute: HomeView.id,
      getPages: [
        GetPage(
          name: HomeView.id,
          page: () => const HomeView(),
        ),
      ],
    );
  }
}
