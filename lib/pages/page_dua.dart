import 'package:belajar_getx/controllers/page_satu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/tebu.dart';

class PageDua extends StatelessWidget {
  /// Semua yg udh di put, tinggal di find aja,
  /// Ga perlu nge Put lagi, gaperlu meng- injeksi dependency nya lagi
  PageSatuController pageDuaC = Get.find<PageSatuController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Dependency')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${pageDuaC.data2['nama']} - ${pageDuaC.data2['age']} Tahun',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
