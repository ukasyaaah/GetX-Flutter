import 'package:belajar_getx/controllers/page_satu_controller.dart';
import 'package:belajar_getx/pages/page_dua.dart';
import 'package:belajar_getx/widgets/tebu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  /// Put
  // Put : Mendaftarkan dependency class yg mau kita pake
  // Bisa juga put di main.dart, disini tinggal find
  PageSatuController pageSatuC = Get.find<PageSatuController>();

  /// Lazy Put
  // akan dibuat saat dibutuhkan
  // final pageSatuC = Get.lazyPut(() => PageSatuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Dependency')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${pageSatuC.data['nama']} - ${pageSatuC.data['age']} Tahun',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.to(() => PageDua());
              },
              text: 'Next',
              bgcolor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
