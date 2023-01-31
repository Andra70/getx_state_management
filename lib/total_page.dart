// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanagement/my_cart.dart';
import 'package:getxstatemanagement/my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Total items",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => Text("${c.sum.toString()}", style: TextStyle(
              fontSize: 30,
              color: Colors.green
            ),)),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 180,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue.shade900,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
                onPressed: () => Get.back(),
                child: const Text(
                  "kembali",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
