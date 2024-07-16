import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
          heroTag: 'tag',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TempPage(),
                ));
          }),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (String? value) {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                      return "Please Enter A Valid Email";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const Gap(20),
                TextFormField(
                  validator: (String? value) {
                    if (value!.length < 6) {
                      // return "Please Enter More Characters";
                      return 'Please Enter More Than six Characters';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const Gap(40),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TempPage(),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Login',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TempPage extends StatefulWidget {
  const TempPage({super.key});

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  double sliderValue = 0;
  bool? checkboxValue = false;
  String? dropDownValue = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'tag',
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                width: double.infinity,
                height: 500,
                child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Close')),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.more),
      ),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title:
                          const Text('هل انت متاكد من انك تريد دفع هذا المبلغ'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('تمت عملية الدفع بنجاح'),
                                ),
                              );
                            },
                            child: const Text('نعم')),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('الغاء')),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                'show alert dialog',
              ),
            ),
            const Gap(20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text(
                        'Simple Dialog Items',
                      ),
                      children: [
                        SimpleDialogOption(
                          child: const Text('item 1'),
                          onPressed: () {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'item 1 selected',
                                ),
                              ),
                            );
                          },
                        ),
                        SimpleDialogOption(
                          child: const Text('item 2'),
                          onPressed: () {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'item 2 selected',
                                ),
                              ),
                            );
                          },
                        ),
                        SimpleDialogOption(
                          child: const Text('item 3'),
                          onPressed: () {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'item 3 selected',
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                'show simple dialog',
              ),
            ),
            const Gap(20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Nulla dolor ea anim ad.',
                              style: TextStyle(fontSize: 30),
                            ),
                            const Gap(20),
                            const Text(
                              'Proident sunt tempor nisi amet nulla ad reprehenderit fugiat velit nisi sit commodo consectetur. Cillum anim Lorem excepteur aute sit labore reprehenderit qui est. Nisi ut ut qui ex velit mollit excepteur exercitation sunt nisi consequat labore aliqua.',
                            ),
                            const Gap(30),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text(
                'show dialog',
              ),
            ),
            const Gap(20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AboutDialog(
                      applicationName: 'Flutter Demo App',
                      applicationIcon: Icon(Icons.facebook),
                      applicationLegalese: 'applicationLegalese',
                      applicationVersion: '1.0.0',
                    );
                  },
                );
              },
              child: const Text(
                'show about dialog',
              ),
            ),
            Slider(
              overlayColor: MaterialStateProperty.all(Colors.deepOrange),
              thumbColor: Colors.green,
              inactiveColor: Colors.yellow,
              activeColor: Colors.pink,
              label: '${sliderValue.toInt()}',
              divisions: 4,
              max: 10,
              value: sliderValue,
              onChanged: (value) {
                setState(
                  () {
                    sliderValue = value;
                    print(value);
                  },
                );
              },
            ),
            const ExpansionTile(
              title: Text('Options'),
              children: [
                Text('Option1'),
                Text('Option2'),
                Text('Option3'),
                Text('Option4'),
              ],
            ),
            CheckboxListTile(
              title: const Text('Option'),
              tristate: true,
              value: checkboxValue,
              onChanged: (value) {
                setState(() {
                  checkboxValue = value;
                });
              },
            ),
            Checkbox(
              tristate: true,
              value: checkboxValue,
              onChanged: (value) {
                setState(() {
                  checkboxValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2025),
                );
                print(date!);
                print(
                  DateFormat('dd, MMM yyy').format(date),
                );
              },
              child: const Text(
                'Open Date Picker',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                var time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(time);
              },
              child: const Text(
                'Open Time Picker',
              ),
            ),
            DropdownButton(
              value: dropDownValue,
              items: const [
                DropdownMenuItem(
                  value: null,
                  child: Text(''),
                ),
                DropdownMenuItem(
                  value: 'item 1',
                  child: Text('item 1'),
                ),
                DropdownMenuItem(
                  value: 'item 2',
                  child: Text('item 2'),
                ),
                DropdownMenuItem(
                  value: 'item 3',
                  child: Text('item 3'),
                ),
              ],
              onChanged: (value) {
                dropDownValue = value;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
