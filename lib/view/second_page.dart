import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'message'.tr,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'sub'.tr,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
