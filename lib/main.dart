import 'package:flutter/material.dart';
import 'package:value_notifier_provider_theme/pages/counter_with_provider_page.dart';
import 'package:value_notifier_provider_theme/pages/counter_with_stateful_page.dart';
import 'package:value_notifier_provider_theme/pages/counter_with_value_notifier_page.dart';
import 'package:provider/provider.dart';
import 'package:value_notifier_provider_theme/pages/post_page_with_provider.dart';
import 'package:value_notifier_provider_theme/providers/counter_provider.dart';
import 'package:value_notifier_provider_theme/providers/post_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(counter: 0),
        ),
        ChangeNotifierProvider(
          create: (context) => PostProvider(),
        ),
      ],
      child: const MaterialApp(
        home: PostPageWithProvider(),
      ),
    );
  }
}
