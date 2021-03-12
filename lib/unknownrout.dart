import 'package:flutter/material.dart';


class UnKnownRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text('UnKnown Route',
        style: TextStyle(
            color: Colors.red,
          fontSize: 30,
        ),),
      ),
    );
  }
}
