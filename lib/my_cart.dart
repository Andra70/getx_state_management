import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanagement/my_controller.dart';
import 'package:getxstatemanagement/total_page.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key, required String title}) : super(key: key);
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //mobil
            Row(
              children: [
                const Text("Mobil", style: TextStyle(
                  fontSize: 30,
                  color:Colors.black
                ),),
                Expanded(child: Container(),),

                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey
                  ),
                  child: IconButton(
                  // ignore: prefer_const_constructors
                  icon: Icon(Icons.add,color:Colors.black),
                  onPressed: ()=>c.increment(),
                  )
                ),
                // ignore: prefer_const_constructors
                SizedBox(width: 20,),
                Obx(()=>Text(c.mobil.toString(),
                style: const TextStyle(
                  fontSize: 30,
                ),
                )),
                // ignore: prefer_const_constructors
                SizedBox(width: 20,), 
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey
                  ),
                  child: IconButton(
                  // ignore: prefer_const_constructors
                  icon: Icon(Icons.remove,color:Colors.black),
                  onPressed: ()=>c.decrement(),
                  )
                ),
              ],
            ),
            const SizedBox(height: 20,),

            //motor
            Row(
              children: [
                const Text("Motor", style: TextStyle(
                  fontSize: 30,
                  color:Colors.black
                ),),
                Expanded(child: Container(),),

                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey
                  ),
                  child: IconButton(
                  // ignore: prefer_const_constructors
                  icon: Icon(Icons.add,color:Colors.black),
                  onPressed: ()=>c.incrementMotor(),
                  )
                ),
                // ignore: prefer_const_constructors
                SizedBox(width: 20,),
                Obx(()=>Text(c.motor.toString(),
                style: const TextStyle(
                  fontSize: 30,
                ),
                )),
                // ignore: prefer_const_constructors
                SizedBox(width: 20,), 
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey
                  ),
                  child: IconButton(
                  // ignore: prefer_const_constructors
                  icon: Icon(Icons.remove,color:Colors.black),
                  onPressed: ()=>c.decrementMotor(),
                  )
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade900,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    ),
                    onPressed: ()=>Get.to(()=>TotalPage()),
                    child: const Text(
                      "Total",style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      ),
                      )
                    ),
                )
              ],
              ),
          ],
        ),
      ),
    );
  }
}