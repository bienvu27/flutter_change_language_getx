import 'package:flutter/material.dart';
import 'package:flutter_change_whole_app_language_getx/view/second_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'हिन्दी', 'locale': Locale('kn', 'IN')},
    {'name': 'संस्कृत', 'locale': Locale('hi', 'IN')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('Choose a language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            updateLanguage(locale[index]['locale']);
                          }, child: Text(locale[index]['name'])),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

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
            ElevatedButton(
              onPressed: () {
                buildDialog(context);
              },
              child: Text('changelang'.tr),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                  Get.to(() => SecondPage());
              },
              child: Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
