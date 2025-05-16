import 'package:belajar_getx/widgets/tebu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarGetX extends StatelessWidget {
  const SnackbarGetX({super.key});
  final usr = 'Ukhasyah';
  @override
  Widget build(BuildContext context) {
    print('render Build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('render Get Snack');
                Get.snackbar('MyTask', 'Hallo $usr, ada tugas baru nihh..');
              },
              child: Text('Pencet Aku'),
            ),
            SizedBox(height: 10),
            Tebu(
              onPressed: () {
                Get.snackbar(
                  'Agoda Ticket',
                  'Tiket Kamu berhasil dikonfirmasi',
                  snackPosition: SnackPosition.BOTTOM,
                  icon: Icon(Icons.airplane_ticket_rounded),
                  margin: EdgeInsets.all(12),
                );
              },
              text: 'Dari Bawah',
              bgcolor: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
