import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFirstGetX extends StatelessWidget {
  final myMath = Get.put(Math());

  @override
  Widget build(BuildContext context) {
    print('DI render');
    return Scaffold(
      appBar: AppBar(title: Text('GETX')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              print('Ulang GetX');
              return Text('${myMath.data}', style: TextStyle(fontSize: 60));
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    myMath.kurang();
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    myMath.tambah();
                  },
                  child: Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Math extends GetxController {
  var data = 0.obs; // State yg selalu di pantau perubahannya
  tambah() => data++;
  kurang() => data--;
}
