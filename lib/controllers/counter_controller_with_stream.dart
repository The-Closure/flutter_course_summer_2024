import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:getx_map_retrofit/controllers/counter_controller_with_update.dart';

class CounterControllerWithObs extends CounterController {
  RxInt count = 0.obs;
  void increament() {
    count.value++;
  }
}
