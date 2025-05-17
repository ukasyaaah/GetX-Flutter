import 'package:get/get.dart';

class TipeController extends GetxController {
  RxInt dataInt = 0.obs;
  RxString dataString = 'Ukhasyah'.obs;
  RxDouble dataDouble = 1.1.obs;
  RxBool dataBool = false.obs;
  RxList<int> dataList = [1, 2, 3].obs;
  RxSet<int> dataSet = {1, 2, 3}.obs;
  RxMap<String, dynamic> dataMap =
      {'id': 1, 'kota': 'Semarang', 'prov': 'Jateng'}.obs;

  tambah() => dataInt++;
  kurang() => dataInt--;

  updateString() => dataString.value = 'Ukhasyah Zufar Verified';
  resetString() => dataString.value = 'Ukhasyah Zufar';

  tambahDouble() => dataDouble.value++;
  kurangDouble() => dataDouble.value--;

  gantiBool() {
    /// Cara 1
    /// isTrue hanya ada pada RxBool
    if (dataBool.isTrue) {
      dataBool.value = false;
    } else {
      dataBool.value = true;
    }

    /// Cara 2
    // dataBool.toggle();
  }

  int tambahh = 4;

  tambahList() => dataList.add(tambahh++);
  tambahSet() => dataSet.add(tambahh++);

  ubahMap() {
    (dataMap.value =
        {'id': 2, 'kota': 'Tegal', 'prov': 'Jateng'} as Map<String, dynamic>);
  }

  resetMap() => dataMap.remove('id');
}
