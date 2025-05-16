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

            /// SnackBar
            Tebu(
              onPressed: () {
                Get.snackbar(
                  'Agoda Ticket',
                  'Tiket Kamu berhasil dikonfirmasi',
                  snackPosition: SnackPosition.BOTTOM,
                  icon: Icon(Icons.airplane_ticket_rounded),
                  margin: EdgeInsets.all(12),
                  duration: Duration(seconds: 3),
                );
              },
              text: 'SnackBar dari Bawah',
              bgcolor: Colors.deepPurpleAccent,
            ),
            SizedBox(height: 10),

            /// Dialog
            Tebu(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Konfirmasi Jawaban',
                  middleText: 'Apa kamu sudah yakin dengan jawaban mu?',
                  textConfirm: 'Iya',
                  onConfirm: () => Navigator.pop(context),
                  textCancel: 'Belum',
                  titlePadding: EdgeInsets.all(24),
                  contentPadding: EdgeInsets.all(24),
                );
              },
              text: 'Ini Dialog',
              bgcolor: Colors.deepOrange,
            ),
            SizedBox(height: 10),

            /// Dialog
          ],
        ),
      ),
    );
  }
}
