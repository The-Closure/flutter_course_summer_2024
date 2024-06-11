import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:statefulwidget_drawer_checkbox_localiztion/resources/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomePageStatFul(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Color conatinerColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: conatinerColor,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                conatinerColor = Colors.blue;
                print(conatinerColor);
              },
              child: const Text(
                "change color",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageStatFul extends StatefulWidget {
  const HomePageStatFul({super.key});

  @override
  State<HomePageStatFul> createState() => _HomePageStatFulState();
}

class _HomePageStatFulState extends State<HomePageStatFul> {
  @override
  void initState() {
    print("init state");
    super.initState();
  }

  @override
  void dispose() {
    print('dispose funcation');
    super.dispose();
  }

  Color conatinerColor = Colors.red;
  double containerWidth = 300;
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    print('build Function');
    return Scaffold(
      drawer: Drawer(
        surfaceTintColor: Colors.amber,
        width: 300,
        backgroundColor: Colors.grey.shade300,
        elevation: 20,
        shadowColor: Colors.pink,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            // SizedBox(
            //   width: double.infinity,
            //   child: DrawerHeader(
            //     decoration: BoxDecoration(
            //       color: Colors.grey,
            //     ),
            //     child: Center(
            //       child: CircleAvatar(
            //         backgroundColor: Colors.brown,
            //         child: Text("MH"),
            //       ),
            //     ),
            //   ),
            // ),
            const UserAccountsDrawerHeader(
              otherAccountsPictures: [
                CircleAvatar(),
                CircleAvatar(),
                CircleAvatar(),
              ],
              accountName: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mohammad Alhajjar"),
                ],
              ),
              accountEmail: Text("mohammad@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text('MH'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
            ),
            const ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            const ListTile(
              title: Text('Chat'),
              leading: Icon(Icons.chat),
            ),
            const ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(AppStrings().homePageString),
        actions: [
          Switch(
            value: switchValue,
            onChanged: (bool newValue) {
              setState(
                () {
                  switchValue = newValue;
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 5),
              width: containerWidth,
              height: 300,
              color: conatinerColor,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  conatinerColor = Colors.blue;
                  containerWidth = 500;
                });
              },
              child: Text(
                AppStrings().changeColorString,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: Text(
                AppStrings().goTOHomePageString,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (context.locale.languageCode == 'en') {
                  context.setLocale(
                    const Locale(
                      'ar',
                    ),
                  );
                } else {
                  context.setLocale(
                    const Locale(
                      'en',
                    ),
                  );
                }
                log(context.locale.languageCode);
              },
              child: Text(
                AppStrings().changeLanguageString,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
