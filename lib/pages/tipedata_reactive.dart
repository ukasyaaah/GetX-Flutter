import 'package:belajar_getx/controllers/tdreact_controller.dart';
import 'package:belajar_getx/widgets/tebu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TipedataReactive extends StatelessWidget {
  final tipeC = Get.put(TipeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TIPE DATA RX')),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text('${tipeC.dataInt}', style: TextStyle(fontSize: 20)),
              ),
              Row(
                children: [
                  Tebu(
                    onPressed: () {
                      tipeC.kurang();
                    },
                    text: '-',
                    bgcolor: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Tebu(
                    onPressed: () {
                      tipeC.tambah();
                    },
                    text: '+',
                    bgcolor: Colors.lightGreen,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () =>
                    Text('${tipeC.dataString}', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Tebu(
                    onPressed: () {
                      tipeC.updateString();
                    },
                    text: 'Update',
                    bgcolor: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Tebu(
                    onPressed: () {
                      tipeC.resetString();
                    },
                    text: 'Reset',
                    bgcolor: Colors.lightGreen,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () =>
                    Text('${tipeC.dataDouble}', style: TextStyle(fontSize: 20)),
              ),
              Row(
                children: [
                  Tebu(
                    onPressed: () {
                      tipeC.kurangDouble();
                    },
                    text: '-',
                    bgcolor: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Tebu(
                    onPressed: () {
                      tipeC.tambahDouble();
                    },
                    text: '+',
                    bgcolor: Colors.lightGreen,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text('${tipeC.dataBool}', style: TextStyle(fontSize: 20)),
              ),
              Row(
                children: [
                  Tebu(
                    onPressed: () {
                      tipeC.gantiBool();
                    },
                    text: 'Ganti Boolean',
                    bgcolor: Colors.orangeAccent,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text('${tipeC.dataList}', style: TextStyle(fontSize: 20)),
              ),
              Row(
                children: [
                  Tebu(
                    onPressed: () {
                      tipeC.tambahList();
                    },
                    text: 'Tambah Data',
                    bgcolor: Colors.purpleAccent,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text('${tipeC.dataSet}', style: TextStyle(fontSize: 20)),
              ),
              Row(
                children: [
                  Tebu(
                    onPressed: () {
                      tipeC.tambahSet();
                    },
                    text: 'Tambah Data Set',
                    bgcolor: Colors.teal,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(thickness: 2),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => ListTile(
                    leading: CircleAvatar(
                      child: Center(child: Text('${tipeC.dataMap['id']}')),
                    ),
                    title: Text('${tipeC.dataMap['kota']}'),
                    subtitle: Text('${tipeC.dataMap['prov']}'),
                  ),
                ),
              ),
              Tebu(
                onPressed: () {
                  tipeC.ubahMap();
                },
                text: 'Ganti',
                bgcolor: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
