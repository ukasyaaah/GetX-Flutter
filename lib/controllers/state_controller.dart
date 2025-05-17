import 'package:get/get.dart';

class StateController extends GetxController {
  /// Variabel ini bisa dipantau setiap peruhbahannya
  /// Kalo Reactive, dia gabisa pake tipe data flutter, bisanya pake tipe datanya GetX
  /// nanti di view nya pake Obx
  RxInt dataReactive = 0.obs;

  /// Ini buat simple manager => Viewnya pake GetBuilder
  int dataSimple = 0;

  Tambah() {
    dataSimple++;
    // Kalo Mau langsung update, tinggal tambah update()
    update();
  }

  Refresh() {
    update();
  }
}
