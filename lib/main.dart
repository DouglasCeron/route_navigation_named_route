import 'package:flutter/material.dart';
import 'package:get/get.dart'

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/nextScreen', page: () => NextScreen(),
        transition: Transition.leftToRight),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Navigation'),
          ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Go to Home'),
              onPressed: () {
                Get.toNamed(
                  '/home',
                );
              },
            )
          ],
        ),
        ),
      ),

    );
  }
}
