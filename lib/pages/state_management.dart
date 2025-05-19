import 'package:belajar_getx/controllers/state_controller.dart';
import 'package:belajar_getx/widgets/tebu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagement extends StatelessWidget {
  StateController stC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Karena selalu berubah, masukkan teks kedalam Obx
            /// Obx hanya berlaku untuk widget2 yg dimana datanya wajib ada obs nya / reactive
            /// Yang di build ulang cuma yg di dalam Obx

            /// Kalo Reactive pake Obx
            // Obx(() {
            //   return Text('${stC.data}', style: TextStyle(fontSize: 50));
            // }),

            /// Kalo Simple Pake GetBuilder
            GetBuilder<StateController>(
              builder:
                  (controller) =>
                      Text('${stC.dataSimple}', style: TextStyle(fontSize: 50)),
            ),
            SizedBox(height: 30),

            /// Reactive
            Tebu(
              onPressed: () {
                stC.Tambah();
              },
              text: 'Tambah Data',
              bgcolor: Colors.lime,
            ),
            SizedBox(height: 30),

            /// Simple
            Tebu(
              onPressed: () {
                stC.Refresh();
              },
              text: 'Refresh Data',
              bgcolor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
