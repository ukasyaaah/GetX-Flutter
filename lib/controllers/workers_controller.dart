import 'package:get/get.dart';

class WorkersController extends GetxController {
  RxInt dataPantau = 0.obs;

  hitung() => dataPantau++;

  @override
  void onInit() {
    /// Selalu Dipantau
    ever(dataPantau, (callback) => print('Dipantau'));

    /// Dipantau hanya sekali
    once(dataPantau, (callback) => print('Cuma Sekali'));

    /// Dipantau setelah X detik perubahan berhenti
    debounce(
      dataPantau,
      (callback) => print('Dipantau Setiap 1 detik setelah perubahan berhenti'),
      time: Duration(seconds: 1),
    );

    /// Dipantau X detik selama perubahan belum berhenti
    interval(
      dataPantau,
      (callback) => print('Dipantau Setiap 1 detik setelah perubahan berhenti'),
      time: Duration (seconds: 1),
    );

    super.onInit();
  }
}
