import 'package:belajar_getx/widgets/tebu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomsheetGetx extends StatelessWidget {
  const BottomsheetGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Bottom Sheet with GetX'),
      ),
      body: Center(
        child: Tebu(
          onPressed: () {
            Get.bottomSheet(
              backgroundColor: Colors.teal,
              Container(height: 200, child: ListView(children: [

                ],
              )),
            );
          },
          text: 'Tampilkan BottomSheet',
          bgcolor: Colors.teal,
        ),
      ),
    );
  }
}
