import 'package:belajar_getx/pages/bottomsheet_getx.dart';
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
        ),
        GetPage(
          name: '/RX',
          page: () => TipedataReactive(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/WORK',
          page: () => Wokkkkkkkeers(),
          transition: Transition.topLevel,
        ),
      ],
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

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
              bgcolor: Colors.cyan,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/bottom');
              },
              text: 'Bottom Sheet ',
              textColor: Colors.black,
              bgcolor: Colors.red,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/state');
              },
              text: 'State Manager',
              textColor: Colors.black,
              bgcolor: Colors.limeAccent,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/RX');
              },
              text: 'Reactive Variable',
              textColor: Colors.black,
              bgcolor: Colors.green,
            ),
            SizedBox(height: 20),
            Tebu(
              onPressed: () {
                Get.toNamed('/WORK');
              },
              text: 'Workers GetX',
              textColor: Colors.black,
              bgcolor: Colors.orange,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
