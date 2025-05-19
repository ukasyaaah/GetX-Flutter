import 'package:belajar_getx/controllers/login_controller.dart';
import 'package:belajar_getx/widgets/tebu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  LoginController loginC = Get.find();
  GetStorage data = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (data.read('dataRemember') != null) {
      loginC.emailC.text = data.read('dataRemember')['email'];
      loginC.passwordC.text = data.read('dataRemember')['password'];
    }
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => TextField(
              obscureText: loginC.isHiding.value,
              controller: loginC.passwordC,
              autocorrect: false,
              textInputAction: TextInputAction.send,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    loginC.isHiding.toggle();
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('Remember me?'),
              value: loginC.isremember.value,
              onChanged: (value) {
                loginC.isremember.toggle();
              },
            ),
          ),
          SizedBox(height: 20),
          Tebu(
            onPressed: () {
              loginC.login();
            },
            text: 'Login',
            bgcolor: Colors.lightGreen,
          ),
        ],
      ),
    );
  }
}
