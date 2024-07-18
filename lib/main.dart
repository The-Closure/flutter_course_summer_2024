import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_map_retrofit/controllers/counter_controller_with_update.dart';
import 'package:getx_map_retrofit/pages/map_page.dart';
import 'package:getx_map_retrofit/utils/my_translations.dart';

import 'controllers/counter_controller_with_stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MapPage(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       translations: MyTranslations(), // your translations
//       locale:
//           const Locale('en'), // translations will be displayed in that locale
//       fallbackLocale: const Locale('en'),
//       defaultTransition: Transition.leftToRight,
//       debugShowCheckedModeBanner: false,
//       transitionDuration: const Duration(
//         seconds: 5,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CounterControllerWithObs counterControllerWithObs =
      Get.put<CounterControllerWithObs>(CounterControllerWithObs());

  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            Get.find<CounterController>().increment();
            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Get.snackbar(
              'Counter Status',
              'Counter has Increased',
              snackPosition: SnackPosition.BOTTOM,
            );
          }),
          FloatingActionButton.extended(
            onPressed: () {
              counterControllerWithObs.increament();
            },
            label: const Text(
              '++ with obs',
            ),
          ),
        ],
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.to(const TempPage());
              // Get.off(() => const TempPage());
              // Get.offAll(() => const TempPage());
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Get.changeTheme(
                  isDark ? ThemeData.light() : ThemeData.dark(),
                );
                isDark = !isDark;
              },
              child: const Text('change theme'))
          // Switch(
          //     value: isDark,
          //     onChanged: (value) {
          //       Get.changeTheme(
          //           Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
          //       print(Get.isDarkMode);
          //     })
        ],
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<CounterController>(
              init: CounterController(),
              builder: (counterController) {
                return Text(
                  counterController.counter.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return Text(
                counterControllerWithObs.count.value.toString(),
                style: const TextStyle(
                  fontSize: 100,
                ),
              );
            }),
            Text('hello world'.tr),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('ar'));
              },
              child: const Text(
                'change locale',
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ],
      ),
      body: const Text('ThirdPage'),
    );
  }
}
