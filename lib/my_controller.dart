import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var mobil = 0.obs;
  var motor = 0.obs;
  int get sum => mobil.value + motor.value;

  increment() {
    mobil.value++;
  }

  decrement() {
    if (mobil.value <= 0) {
      Get.snackbar(
        "system", "gagal menambahkan mobil",
        // ignore: prefer_const_constructors
        icon: Icon(Icons.warning_amber_sharp, color: Colors.red),
        barBlur: 20,
        isDismissible: true,
        // ignore: prefer_const_constructors
        duration: Duration(seconds: 3),
      );
    } else {
      mobil.value--;
    }
  }

  incrementMotor() {
    motor.value++;
  }

  decrementMotor() {
    if (motor.value <= 0) {
      Get.snackbar(
        "Beli motor", "gagal menambahkan motor",
        // ignore: prefer_const_constructors
        icon: Icon(Icons.warning_amber_sharp, color: Colors.red),
        barBlur: 20,
        isDismissible: true,
        // ignore: prefer_const_constructors
        duration: Duration(seconds: 3),
      );
    } else {
      motor.value--;
    }
  }
}
