import 'package:belajar_getx/controllers/workers_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wokkkkkkkeers extends StatelessWidget {
  final dataC = Get.put(WorkersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Workers GetX')),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Obx(
                () => Text(
                  'Terjadi perubahan ${dataC.dataPantau}X',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextField(
                onChanged: (value) => dataC.hitung(),
                decoration: InputDecoration(
                  labelText: 'Data',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
