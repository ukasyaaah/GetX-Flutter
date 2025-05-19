import 'package:belajar_getx/bindings/worker_binding.dart';
import 'package:belajar_getx/controllers/page_satu_controller.dart';
import 'package:belajar_getx/controllers/state_controller.dart';
import 'package:belajar_getx/controllers/tdreact_controller.dart';
import 'package:belajar_getx/controllers/workers_controller.dart';
import 'package:belajar_getx/pages/binding_page.dart';
import 'package:belajar_getx/pages/bottomsheet_getx.dart';
import 'package:belajar_getx/pages/page_satu.dart';
import './pages/workers.dart';
import 'package:belajar_getx/pages/tipedata_reactive.dart';
import './pages/state_management.dart';
import 'package:belajar_getx/pages/first_getx.dart';
import 'package:belajar_getx/pages/snackbar.dart';
import 'package:belajar_getx/widgets/tebu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(
          name: '/first',
          page: () => MyFirstGetX(),
          transition: Transition.fade,
          binding: BindingsBuilder.put(() => Math()),
        ),
        GetPage(
          name: '/snack',
          page: () => SnackbarGetX(),
          transition: Transition.circularReveal,
        ),
        GetPage(
          name: '/bottom',
          page: () => BottomsheetGetx(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: '/state',
          page: () => StateManagement(),
          transition: Transition.downToUp,

          /// Artinya : Kalo mau masuk page state, harus put stateController
          binding: BindingsBuilder.put(() => StateController()),
        ),
        GetPage(
          name: '/RX',
          page: () => TipedataReactive(),
          transition: Transition.fadeIn,
          bindings: [BindingsBuilder.put(() => TipeController())],
        ),
        GetPage(
          name: '/WORK',
          page: () => Wokkkkkkkeers(),
          transition: Transition.topLevel,
          binding: WorkerBinding(),
        ),
        GetPage(
          name: '/depe',
          page: () => PageSatu(),
          transition: Transition.rightToLeftWithFade,
          binding: BindingsBuilder(
            () => Get.lazyPut(() => PageSatuController()),
          ),
        ),
        GetPage(
          name: '/binding',
          page: () => BindingPage(),
          transition: Transition.topLevel,
          binding: BindingsBuilder(() => Get.lazyPut(() => Math())),
        ),
      ],
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tebu(
              onPressed: () {
                Get.toNamed('/first');
              },
              text: 'First',
              bgcolor: Colors.black,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/snack');
              },
              text: 'SnackBar & Dialog',
              textColor: Colors.black,
              bgcolor: Colors.red,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/bottom');
              },
              text: 'Bottom Sheet ',
              textColor: Colors.black,
              bgcolor: Colors.yellow,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/state');
              },
              text: 'State Manager',
              textColor: Colors.black,
              bgcolor: Colors.orange,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/RX');
              },
              text: 'Reactive Variable',
              textColor: Colors.black,
              bgcolor: Colors.grey,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/WORK');
              },
              text: 'Workers GetX',
              textColor: Colors.black,
              bgcolor: Colors.lightGreenAccent,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/depe');
              },
              text: 'Dependecy Management',
              textColor: Colors.black,
              bgcolor: Colors.blue,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/binding');
              },
              text: 'Binding',
              textColor: Colors.black,
              bgcolor: Colors.deepPurpleAccent,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
