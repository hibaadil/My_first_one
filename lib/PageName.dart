import 'package:bma_flutter/Result_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('results'),
      ),
      body: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Result_Page()));
        },
      ),
    );
  }
}
