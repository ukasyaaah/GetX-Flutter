import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarGetX extends StatelessWidget {
  const SnackbarGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar('title', 'message');
              },
              child: Text('Pencet Aku'),
            ),
          ],
        ),
      ),
    );
  }
}
