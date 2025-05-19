import 'package:belajar_getx/pages/first_getx.dart';
import 'package:belajar_getx/widgets/tebu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BindingPage extends StatelessWidget {
  const BindingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Bnding')),
      body: Center(
        child: Tebu(
          onPressed: () => Get.to(() => MyFirstGetX()),
          text: 'Go to Counter Page',
          bgcolor: Colors.pink,
        ),
      ),
    );
  }
}
