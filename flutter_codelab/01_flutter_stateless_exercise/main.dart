import 'package:flutter/material.dart';
import 'package:dartpad_test/dartpad_test.dart';
import 'package:dartpad_flutter_test/dartpad_flutter_test.dart';
import 'package:matcher/matcher.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar!'),
      ),
      body: Text('Some text'),
    );
  }
}
