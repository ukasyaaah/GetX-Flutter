import 'package:belajar_getx/pages/first_getx.dart';
import 'package:belajar_getx/pages/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        // '/': (context) => const Home(),
        '/first': (context) => MyFirstGetX(),
        '/snack': (context) => const SnackbarGetX(),
      },
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/first');
              },
              child: Text(
                'First',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
