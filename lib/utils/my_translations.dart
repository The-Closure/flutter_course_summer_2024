import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello world': 'Hello World',
        },
        'ar': {
          'hello world': 'مرحبا ايها العالم',
        }
      };
}
