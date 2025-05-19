import 'package:belajar_getx/controllers/workers_controller.dart';
import 'package:get/get.dart';

class WorkerBinding implements Bindings {
  /// Wajib override funct dependencies
  @override
  void dependencies() {
    /// Bisa lebih dari satu
    Get.lazyPut(() => WorkersController());
  }
}
