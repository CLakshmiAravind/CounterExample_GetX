import 'package:get/get.dart';

class CounterClass extends GetxController {
  RxInt count=1.obs;

  incrementer(){
    count.value++;
    print(count.obs);
  }
}