import 'package:belajar_getx/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  RxBool isHiding = true.obs;
  RxBool isremember = false.obs;

  login() async {
    GetStorage data = GetStorage();
    if (data.read('dataRemember') != null) {
      data.remove('dataRemember');
    }
    if (emailC.text == 'admin@admin.com') {
      if (isremember.isTrue) {
        data.write('dataRemember', {
          'email': emailC.text,
          'password': passwordC.text,
        });
      }
      Get.offAll(() => Home());
    } else {
      return Get.snackbar('Kesalahan', 'Email / Password salah!');
    }
  }

  hide() {
    if (isHiding.isTrue) {
      isHiding.value = true;
    } else {
      isHiding.value = false;
    }
  }
}
